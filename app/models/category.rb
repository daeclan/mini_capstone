class Category < ApplicationRecord
  has_many :products
  belongs_to :category_product
end
