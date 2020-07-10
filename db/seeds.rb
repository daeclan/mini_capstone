# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

product = Product.new(name: "Nintendo Switch", price: 299, image_url: "https://i.gadgets360cdn.com/products/large/1549526400_635_nintendo_switch_db.jpg", description: "Introducing Nintendo Switch, the new home video game system from Nintendo. In addition to providing single and multiplayer thrills at home, the Nintendo Switch system can be taken on the go so players can enjoy a full home console experience anytime, anywhere.")

product.save