class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :category_product
  has_many :images
  has_many :orders

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { minimum: 10, maxmimum: 800 }

  # def is_discounted?
  #   if price < 10
  #     true
  #   else
  #     false
  #   end
  # end

  def is_discounted?
    price < 10
  end

  # def is_discounted?
  #   !(price > 10)
  # end

  def tax
    tax = price * 0.09
    "The tax due is $#{tax}."
  end

  def total
    tax + price
  end
end
