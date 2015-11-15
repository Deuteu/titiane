class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :email
      t.string :phone
      t.string :link
      t.string :ref
      t.integer :year
      t.integer :order

      t.timestamps
    end
  end
end
