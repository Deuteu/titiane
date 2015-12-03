class AddPictureToProductions < ActiveRecord::Migration
  def self.up
    add_attachment :productions, :picture
  end

  def self.down
    remove_attachment :productions, :picture
  end
end
