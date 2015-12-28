class RemoveLanguageFromResumes < ActiveRecord::Migration
  def change
    remove_column :resumes, :language, :integer
  end
end
