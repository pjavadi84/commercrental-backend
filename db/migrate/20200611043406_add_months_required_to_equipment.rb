class AddMonthsRequiredToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :montths_required, :integer
  end
end
