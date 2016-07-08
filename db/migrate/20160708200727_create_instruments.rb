class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :category
      t.string :brand
      t.integer :year
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
