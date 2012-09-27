class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :provider, :uid, :current_password, :password_confirmation, :remember_me, :role, :city, :region, :country, :latitude, :longitude, :postal_code
  attr_accessor :current_password
  has_many :user_associations

  def update_with_password(params={}) 
    if params[:password].blank? 
       params.delete(:password) 
       params.delete(:password_confirmation) if 
       params[:password_confirmation].blank? 
    end 
    update_attributes(params) 
  end 
  
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(
        :name => auth.extra.raw_info.name,
        :provider => auth.provider,
        :uid => auth.uid,
        :email => auth.info.email,
        :password => Devise.friendly_token[0,20]
      )
    end
    user
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
  
end
