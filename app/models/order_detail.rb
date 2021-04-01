class OrderDetail < ApplicationRecord
  belongs_to :order
  validates :price, :quantity, :taxes, presence: true
  validates :price, :taxes, numericality: true
  validates :quantity, numericality: { only_integer: true }
end
