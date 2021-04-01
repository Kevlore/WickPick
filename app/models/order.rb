class Order < ApplicationRecord
  belongs_to :customer
  validates :shipping_address, :date, :order_status presence: true
end
