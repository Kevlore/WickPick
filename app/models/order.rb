class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_detail
  validates :shipping_address, :date, :order_status presence: true
end
