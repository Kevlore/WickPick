class AddProvinceFkToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_reference :customers, :provinces
  end
end
