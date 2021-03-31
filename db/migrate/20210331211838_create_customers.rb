class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.string :full_name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
