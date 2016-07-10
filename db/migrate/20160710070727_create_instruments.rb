class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :category
      t.string :brand
      t.integer :year
      t.text :details
      t.integer :price
      t.integer :owner_id

      t.timestamps null: false
      
      t.belongs_to :user, index: true
    end
  end
end
