class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.string :user_id
      t.timestamp :last_grabbed
      t.boolean :flagged
      t.boolean :r_rated
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth # this is optional.
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      
      t.timestamps
    end
    # Word.create!(:name => "happy")
    # Word.create!(:name => "you")
    # Word.create!(:name => "twitter")
    # Word.create!(:name => "facebook")
    # Word.create!(:name => "please")
    # Word.create!(:name => "free")
    # Word.create!(:name => "social")
    # Word.create!(:name => "follow")
    # Word.create!(:name => "love")
    # Word.create!(:name => "feeling")
    # Word.create!(:name => "break the ice")
    # Word.create!(:name => "hands down")
    # Word.create!(:name => "rub the wrong way")
    # Word.create!(:name => "spill the beans")
    # Word.create!(:name => "jeans")
    # Word.create!(:name => "food")
    # Word.create!(:name => "car")
    # Word.create!(:name => "taco")
    # Word.create!(:name => "old stomping ground")
    # Word.create!(:name => "favorite sport")
    # Word.create!(:name => "color")
    # Word.create!(:name => "adventurer")
    # Word.create!(:name => "propellant")
    # Word.create!(:name => "root")
    # Word.create!(:name => "problem")
    # Word.create!(:name => "complaint")
    # Word.create!(:name => "theta")
    # Word.create!(:name => "frequency")
    # Word.create!(:name => "weakness")
    # Word.create!(:name => "virtue")
    
    
    
  end
end
