class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_id, :integer, :default => 2, :null => false
    
  end
end
