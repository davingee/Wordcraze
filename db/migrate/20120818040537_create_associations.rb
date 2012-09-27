class CreateAssociations < ActiveRecord::Migration
  def self.up
    create_table :associations do |t|
      t.string :name
      t.integer :word_id
      t.integer :association_id

      t.integer :user_id
      t.integer :count, :default => 0
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.timestamps
    end
  end

  def self.down
    drop_table :associations
  end
end
