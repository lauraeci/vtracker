class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street1
      t.string :street2
      t.string :state
      t.string :country
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end
