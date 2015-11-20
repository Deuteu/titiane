class AddInitialContacts < ActiveRecord::Migration
  def up
    Setting.create(key: "phone", value: "+33626497504")
    Setting.create(key: "mail", value: "tlebel@artfx.fr")
    Setting.create(key: "linkedin", value: "http://fr.linkedin.com/in/titianelebel")
  end
 
  def down
    Setting.delete_all
  end
end
