class AddDonationIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :donation_id, :integer
    remove_foreign_key :donations, :members
  end
end
