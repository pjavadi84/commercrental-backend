class AddVendorToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_reference :equipment, :vendor, null: false, foreign_key: true
  end
end
