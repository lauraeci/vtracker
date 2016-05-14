class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :organization_id
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
