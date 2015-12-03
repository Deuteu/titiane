class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.integer :year
      t.integer :order
      t.string :title
      t.string :realisation
      t.string :link

      t.timestamps
    end
  end
end
