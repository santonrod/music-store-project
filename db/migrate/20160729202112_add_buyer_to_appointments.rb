class AddBuyerToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :buyer, :integer
    add_reference :appointments, :user, index: true
  end
end
