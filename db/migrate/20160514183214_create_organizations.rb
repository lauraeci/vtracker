class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :account_id
      t.integer :member_id
      t.string :name

      t.timestamps null: false
    end
  end
end
