class AddCvToResume < ActiveRecord::Migration
  def self.up
    add_attachment :resumes, :cv
  end

  def self.down
    remove_attachment :resumes, :cv
  end
end
