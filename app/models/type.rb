class Type < ApplicationRecord
  has_many :candle
  validates :type, presence: true
end
