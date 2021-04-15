class Customer < ApplicationRecord
  validates :username, :email, uniqueness: true
  validates :username, :password, :full_name, :email, :address, presence: true
  has_many :orders
  belongs_to :province
end
