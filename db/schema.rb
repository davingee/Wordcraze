# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120826065934) do

  create_table "assets", :force => true do |t|
    t.string   "type"
    t.integer  "assetable_id"
    t.string   "assetable_type"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.string   "url"
    t.string   "name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "associations", :force => true do |t|
    t.string   "name"
    t.integer  "word_id"
    t.integer  "association_id"
    t.integer  "user_id"
    t.integer  "count",          :default => 1
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.boolean  "fill_in",        :default => false
    t.boolean  "scrubbed",       :default => false
    t.boolean  "user_word",      :default => false
  end

  create_table "audios", :force => true do |t|
    t.string   "name"
    t.string   "language"
    t.integer  "word_id"
    t.integer  "user_id"
    t.string   "sound_file_name"
    t.string   "sound_content_type"
    t.integer  "sound_file_size"
    t.datetime "sound_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "email"
    t.string   "find_us"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_associations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "association_id"
    t.integer  "word_id"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.string   "city"
    t.string   "region"
    t.string   "country"
    t.string   "postal_code"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.string   "city"
    t.string   "region"
    t.string   "country"
    t.string   "postal_code"
    t.string   "role"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "words", :force => true do |t|
    t.string   "name"
    t.string   "user_id"
    t.datetime "last_grabbed"
    t.integer  "flagged",            :default => 0
    t.integer  "r_rated",            :default => 0
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.boolean  "got",                :default => false
    t.boolean  "scrubbed",           :default => false
    t.boolean  "user_word",          :default => false
    t.boolean  "fill_in",            :default => false
    t.integer  "tasks_count",        :default => 0
    t.integer  "associations_count", :default => 0
  end

end
