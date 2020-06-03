class AddCustomerToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_reference :equipment, :customer, null: false, foreign_key: true
  end
end
