class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :address_id
      t.integer :permissions_id
      t.integer :user_type_id
      t.integer :organization_id
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
