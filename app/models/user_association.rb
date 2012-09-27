class UserAssociation < ActiveRecord::Base

  attr_accessible :user_id, :association_id, :word_id, :city, :region, :country

  belongs_to :association
  belongs_to :user
  belongs_to :word
  
end
