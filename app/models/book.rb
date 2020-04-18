class Book < ApplicationRecord
  # belongs_to :author

  validates :title, presence: true
  # validates :description, presence: true, length: {minimum: 10, maximum: 20}
  validates :page, numericality: {numericality: true, greater_than: 10}
  validates :description, exclusion: {in: ['good','bad','enough']}

  def self.expensive
    where('price > 200000')
  end

  def self.price_equal_more(price)
    where('price >= ?', price)
  end
end
