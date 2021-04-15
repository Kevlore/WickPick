class RemoveEmailAndPasswordFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :email
    remove_column :customers, :password
  end
end
