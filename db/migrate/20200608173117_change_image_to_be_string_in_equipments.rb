class ChangeImageToBeStringInEquipments < ActiveRecord::Migration[6.0]
  def change
    change_column :equipment, :image, :string
  end
end
