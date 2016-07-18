class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :location
      t.datetime :pickup
      t.references :instrument, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
