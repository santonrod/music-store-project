class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :category
      t.string :brand
      t.integer :year
      t.text :details
      t.integer :price
      t.integer :owner_id
      
      t.belongs_to :owner, index: true

      t.timestamps null: false
    end
  end
end
