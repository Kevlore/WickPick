class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :candle
  validates :price, :quantity, presence: true
  validates :price, numericality: true
  validates :quantity, numericality: { only_integer: true }
end
