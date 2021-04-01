class Type < ApplicationRecord
  has_many :candle
  validates :type_name, presence: true
end
