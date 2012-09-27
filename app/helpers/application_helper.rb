module ApplicationHelper

  def ip_location
    unless session[:location].blank?
      @ip_location = session[:location][:city] + " " + session[:location][:region] 
    else
      "Dev Mode"
    end
  end
  
  def facebook_like
    content_tag :iframe, nil, :src => "http://www.facebook.com/plugins/like.php?href=#{CGI::escape(request.url)}&layout=standard&show_faces=false&width=450&action=like&font=arial&colorscheme=dark&height=30", :scrolling => 'no', :frameborder => '0', :allowtransparency => true, :id => :facebook_like
  end

  # def info_for_map(word)
  #   info = []
  #   info << svg.addNode("#{word.id}", "#{escape_javascript(word.name)}", "/home/index?id=#{word.id}", "/assets/rails.png", "3");
  #   for association in word.associations.where(:scrubbed => true).limit(10) + word.associations.where(:user_word => true).limit(5)
  #     info << %Q(svg.addNode("#{association.association_id}", "#{escape_javascript(association.associated_word.name)}", "/home/index?association_id=#{association.association_id}", "/assets/rails.png", #{association.count});
  #     svg.addLink("#{association.association_id}", "#{@word.id}", #{association.count});)
  #   end
  #   info
  # end

end
