class Association < ActiveRecord::Base
  attr_accessible :name, :word_id, :word, :associated_word, :count, :the_count, :user_word
  
  # before_create :downcase_name
  # def downcase_name
  #   self.name = self.name.downcase
  # end
  
  belongs_to :word #, :counter_cache => true
  belongs_to :associated_word, :class_name => 'Word', :foreign_key => 'association_id'
  
  has_many :user_associations
  
end
