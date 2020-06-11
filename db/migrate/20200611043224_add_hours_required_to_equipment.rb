class AddHoursRequiredToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :hours_required, :integer
  end
end
