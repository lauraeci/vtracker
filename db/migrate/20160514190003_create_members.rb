class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :organization_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :age
      t.integer :hours_worked
      t.datetime :last_contacted_at

      t.timestamps null: false
    end
  end
end
