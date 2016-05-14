class AddMemberToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :member_id, :string
    add_column :addresses, :city, :string
  end
end
