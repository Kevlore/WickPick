class Candle < ApplicationRecord
  belongs_to :order_detail
  belongs_to :type
  validates :scent, :colour, :size, :price, presence: true
  validates :price, numericality: true
end
