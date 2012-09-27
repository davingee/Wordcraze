class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :the_association, :random_word, :require_admin, :admin, :first_random_word, :get_associations
  
  def random_word
    @random_word = Word.find_by_sql("SELECT name, id FROM words WHERE associations_count > 5 and flagged < 6 ORDER BY RAND() LIMIT 1").first
  end
  
  def first_random_word    
    @first_random_word = Word.find_by_sql("SELECT name, id FROM words WHERE associations_count > 5 and flagged < 6 ORDER BY RAND() LIMIT 50").last
  end
  
  def get_associations(word)
    @get_associations ||= Association.find_by_sql("SELECT id, association_id, count FROM associations WHERE scrubbed is true and user_word is false and word_id = #{word.id} ORDER BY RAND() LIMIT 10") + 
    word.associations.find_by_sql("SELECT id, association_id, count FROM associations WHERE user_word is true and word_id = #{word.id} ORDER BY RAND() LIMIT 15")
    # @get_associations ||= (word.associations.where(:scrubbed => true).select([:association_id, :count, :id]).limit(10) + word.associations.where(:user_word => true).select([:association_id, :count, :id]).limit(15))
  end

  def the_association
    @association ||= Association.new
  end
  
  before_filter :city_state_from_ip_or_postal_code

  def city_state_from_ip_or_postal_code(postal_code=false)
    unless session[:location]
      Geokit::Geocoders::google = 'ABQIAAAAjkocf-uapJh4zp82saxrjRTJQa0g3IQ9GZqIMmInSLzwtGDKaBTVoUPc9vOiQIy1jPApkJIrsM5V6g'
      if postal_code 
        # if Rails.env == "development"
        #   ip = "206.127.79.163"
        # else
          ip = request.remote_ip 
        # end
        results = Geokit::Geocoders::GoogleGeocoder.geocode(Geokit::Geocoders::MultiGeocoder.geocode(ip))
        country = results.country
        res = Geokit::Geocoders::GoogleGeocoder.geocode("#{country} #{postal_code}")
      else      
        # ip = request.remote_ip 
        # ip = "206.127.79.163" if Rails.env == "development"
        if Rails.env == "development"
          ip = "206.127.79.163"
        else
          ip = request.remote_ip 
        end
        res = Geokit::Geocoders::GoogleGeocoder.geocode(Geokit::Geocoders::MultiGeocoder.geocode(ip))
      end
      if res.success
        city = res.city
        city = res.district if city.blank?
        region = res.state
        country = res.country
        # city_db = Country.find_by_iso3(country).regions.find_by_code(region).cities.find_by_city(city)
        session[:location] = {:city => city, :country => country, :region => region, :latitude => res.lat, :longitude => res.lng, :postal_code => res.zip }
      end
    end
  end


  def can_edit?(user_id)
    if current_user
      admin or current_user.id == user_id  
    end
  end
  
  def admin
    if current_user
      if current_user.role == "admin"
        return true
      end
    end
  end
  
  def require_admin
    unless admin
      flash[:error] = "You do not have permission to access this page." 
      redirect_to "/" # Prevents the current action from running
    end
  end
  
  
  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end

end
