class AddScrubbedToWords < ActiveRecord::Migration
  def change
    add_column :words, :got, :boolean, :default => false
    add_column :words, :scrubbed, :boolean, :default => false
    add_column :words, :user_word, :boolean, :default => false
    add_column :words, :fill_in, :boolean, :default => false
    add_column :associations, :fill_in, :boolean, :default => false
    add_column :associations, :scrubbed, :boolean, :default => false
    add_column :associations, :user_word, :boolean, :default => false
  end
end
