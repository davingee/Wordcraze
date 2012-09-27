class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :name
      t.string :language
      t.integer :word_id
      t.integer :user_id
      
      t.string :sound_file_name
      t.string :sound_content_type
      t.integer :sound_file_size
      t.datetime :sound_updated_at
      t.timestamps
    end
  end

end
