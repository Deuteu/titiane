class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :title
      t.integer :language

      t.timestamps
    end
  end
end
