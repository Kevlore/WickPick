class Candle < ApplicationRecord
  belongs_to :type
  validates :scent, :colour, :size, :price, presence: true
  validates :price, numericality: true
  has_one_attached :image

  paginates_per 5

  def self.search(keywords)
    if keywords
      where("scent LIKE ?", "%#{keywords}%").order('id DESC')
    else
      order('id DESC')
    end
  end
end
