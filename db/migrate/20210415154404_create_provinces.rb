class CreateProvinces < ActiveRecord::Migration[6.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
