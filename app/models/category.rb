class Category < ApplicationRecord
  has_many :category_products
  has_many :carted_products
  has_many :products, through: :category_products
  has_many :products, through: :carted_products
end
