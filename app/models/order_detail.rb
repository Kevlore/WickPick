class OrderDetail < ApplicationRecord
  belongs_to :order
  has_many :candle
  validates :price, :quantity, :taxes, presence: true
  validates :price, :taxes, numericality: true
  validates :quantity, numericality: { only_integer: true }
end
