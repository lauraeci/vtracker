class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :organizations, :member_id
    remove_column :organizations, :account_id
  end
end
