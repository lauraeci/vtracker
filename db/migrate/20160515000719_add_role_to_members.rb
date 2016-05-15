class AddRoleToMembers < ActiveRecord::Migration
  def change
    add_column :members, :roles, :text
  end
end
