class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable
      
      t.string :first_name
      t.string :last_name
      t.string :username
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :city
      t.string :region
      t.string :country
      t.string :postal_code
      t.string :role

      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
    
    User.create!(:email => "scott@scoran.com", :password => "fucker", :password_confirmation => "fucker", :role => "admin")
    for user in User.all
      user.role = "admin"
      user.save
    end
    
  end

end
