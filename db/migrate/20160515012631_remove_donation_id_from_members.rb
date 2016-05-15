class RemoveDonationIdFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :donation_id, :integer
  end
end
