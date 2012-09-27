class Audio < ActiveRecord::Base
  attr_accessible :language, :name, :user_id, :word_id, :sound

  # has_attached_file :sound#, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
