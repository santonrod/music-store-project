class AddColumnToInstruments < ActiveRecord::Migration
  def change
    add_column :instruments, :owner_id, :integer
  end
end
