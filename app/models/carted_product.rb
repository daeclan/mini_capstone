class CartedProduct < ApplicationRecord
  belongs_to :products
  belongs_to :users
  belongs_to :order, optional: true
end
