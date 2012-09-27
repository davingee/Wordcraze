class CreateUserAssociations < ActiveRecord::Migration
  def self.up
    create_table :user_associations do |t|
      t.integer :user_id
      t.integer :association_id
      t.integer :word_id
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :city
      t.string :region
      t.string :country
      t.string :postal_code
      t.timestamps
    end
  end

  def self.down
    drop_table :user_associations
  end
end
