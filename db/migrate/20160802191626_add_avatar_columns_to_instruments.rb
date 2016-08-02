class AddAvatarColumnsToInstruments < ActiveRecord::Migration

  def up
    add_attachment :instruments, :avatar
  end

  def down
    remove_attachment :users, :avatar
  
  end
end
