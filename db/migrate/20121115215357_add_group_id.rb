class AddGroupId < ActiveRecord::Migration
  def up
    add_column :users, :group_id, :string  
  end

  def down
    remove_column :users, :group_id, :string 
  end
end
