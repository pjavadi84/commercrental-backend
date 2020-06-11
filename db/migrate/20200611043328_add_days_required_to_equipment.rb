class AddDaysRequiredToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :days_required, :integer
  end
end
