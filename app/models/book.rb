class Book < ApplicationRecord
  # belongs_to :author

  validates :title, presence: true
  validates :description, presence: true

  def self.expensive
    where('price > 200000')
  end

  def self.price_equal_more(price)
    where('price >= ?', price)
  end
end
