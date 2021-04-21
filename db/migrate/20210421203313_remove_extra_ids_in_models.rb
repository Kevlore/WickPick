class RemoveExtraIdsInModels < ActiveRecord::Migration[6.1]
  def change
    remove_reference :candles, :order_detail
    add_reference :order_details, :candle
  end
end
