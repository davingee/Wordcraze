class ChangeWordFlaggedOrRRated < ActiveRecord::Migration
  def up
    change_column :words, :flagged, :integer, :default => 0
    change_column :words, :r_rated, :integer, :default => 0
    change_column :associations, :count, :integer, :default => 1
    # for word in Word.all
    #   word.flagged = 0
    #   word.r_rated = 0
    #   word.save
    # end
  end

  def down
  end
end
