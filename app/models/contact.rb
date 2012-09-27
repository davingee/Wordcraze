class Contact < ActiveRecord::Base
  attr_accessible :email, :comments
  validates :comments, :presence => true
  
  validates_format_of :email, :with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i

end
