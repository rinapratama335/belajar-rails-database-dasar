class Book < ApplicationRecord
  belongs_to :author

  def self.expensive
    where('price > 200000')
  end

  def self.price_equal_more(price)
    where('price >= ?', price)
  end
end
