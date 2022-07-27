class AddRoleToUserGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :user_groups, :role, :text, array: true, default: []
  end
end
