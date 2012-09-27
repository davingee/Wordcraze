class Word < ActiveRecord::Base
  
  attr_accessible :name, :flagged, :rated_r, :user_word
  validates :name, :length => { :maximum => 40 }
  
  has_many :associations
  has_many :associated_words, :through => :associations
  has_many :user_associations

  before_create :downcase_name  
  def downcase_name
    self.name = self.name.downcase
  end
  
  def search
    q = "absolute"
    # w = Word
    # Word.conditions("words.name LIKE ?", "%#{q.downcase}%")
    Word.conditions("words.name = ?", "#{q.downcase}")
    # w.where(:scrubbed => true).limit(15) + w.where(:scrubbed => false)
    
    # scope = Association.scoped({})
    # scope = scope.conditions "associations.count < ?", 1" # only 5 of these
  end
  


  def self.user_and_scrubbed
    where(:scrubbed => true).limit(15) + where(:scrubbed => false)
    # a = Association
    # (a.where("count = 1").limit(15) + a.where("count > 1").limit(10))
    # a
  end
  
  def find_words(keywords, associations)
    scope = Word.scoped({})
    scope = scope.conditions("words.name LIKE ?", "%#{keywords}%").limit(20) unless keywords.blank?
    scope = scope.conditions("words.scrubbed = ?", true).limit(5) # only 5 of these
    # scope = scope.conditions("words.associations <= ?", associations) unless associations.blank?
    scope
  end
  
  def self.most_recent
    order("created_at desc").limit(10)
  end
  
  
end
