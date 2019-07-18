class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.text :details
      t.integer :price
      t.string :category
      t.integer :quantity

      t.timestamps
    end
  end
end
