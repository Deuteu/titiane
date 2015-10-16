class AddInitialUsers < ActiveRecord::Migration
  def up
    User.create(email: "admin@localhost.com", password: "admin123")
  end
 
  def down
    User.delete_all
  end
end
