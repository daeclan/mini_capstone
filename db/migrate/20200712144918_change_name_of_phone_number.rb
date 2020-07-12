class ChangeNameOfPhoneNumber < ActiveRecord::Migration[6.0]
  def change
    rename_column :suppliers, :phphone_number, :phone_number
  end
end
