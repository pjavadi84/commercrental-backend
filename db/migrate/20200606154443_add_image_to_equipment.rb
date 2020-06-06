class AddImageToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :image, :bytea
  end
end
