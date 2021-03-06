class Book < ApplicationRecord
  # belongs_to :author

  validates :title, presence: {message: 'Field harus diisi'}
  validates :description, presence: {message: 'Field harus diisi'}, length: {minimum: 10, message: 'Minimal adalah 10 karakter'}
  validates :page, numericality: {message: 'Harus berupa angka'}
  validates :price, numericality: {message: 'Harus berupa angka'}

  # validates :title, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
  # validates :title, uniqueness: {uniqueness: true, case_sensitive: true}

  # validate :custom_validation
  #
  # def custom_validation
  #   if page >= 300
  #     if price < 200000
  #       errors.add(:price, 'Harga minimal 150000 jika jumlah halaman 300 atau lebih')
  #     end
  #   end
  # end

  # validates :price, numericality: {greater_than_or_equal_to: 200000}, if: :page_more_than_300
  #
  # def page_more_than_300
  #   page >= 300
  # end

  def self.expensive
    where('price > 200000')
  end

  def self.price_equal_more(price)
    where('price >= ?', price)
  end
end
