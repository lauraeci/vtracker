class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :member_id
      t.string :subject
      t.integer :account_id
      t.string :subject_type

      t.timestamps null: false
    end
  end
end
