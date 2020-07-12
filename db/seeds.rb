# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

products = Product.where(supplier_id: nil)

products.each do |product|
  supplier_id = Supplier.all.sample.supplier_id
end
