class AddAssociationCounts < ActiveRecord::Migration
  def up
    # add_column :words, :associations_count, :integer, :default => 0
    # 
    # Word.reset_column_information
    # Word.all.each do |w|
    #   w.update_attribute :associations_count, w.associations.length
    #   puts w.name
    # end
  end

  def down
  end
end
