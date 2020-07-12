class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.string :phphone_number

      t.timestamps
    end
  end
end
