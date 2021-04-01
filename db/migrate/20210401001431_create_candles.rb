class CreateCandles < ActiveRecord::Migration[6.1]
  def change
    create_table :candles do |t|
      t.string :scent
      t.string :colour
      t.string :size
      t.decimal :price
      t.references :order_detail, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
