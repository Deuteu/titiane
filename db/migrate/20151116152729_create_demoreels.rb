class CreateDemoreels < ActiveRecord::Migration
  def change
    create_table :demoreels do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
