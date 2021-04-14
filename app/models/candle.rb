class Candle < ApplicationRecord
  belongs_to :order_detail
  belongs_to :type
  validates :scent, :colour, :size, :price, presence: true
  validates :price, numericality: true
  has_one_attached :image

  paginates_per 5
end
