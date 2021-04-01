class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :shipping_address
      t.date :date
      t.string :order_status
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
