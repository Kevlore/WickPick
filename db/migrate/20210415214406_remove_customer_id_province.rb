class RemoveCustomerIdProvince < ActiveRecord::Migration[6.1]
  def change
    remove_reference :provinces, :customer
  end
end
