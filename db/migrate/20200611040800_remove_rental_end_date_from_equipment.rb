class RemoveRentalEndDateFromEquipment < ActiveRecord::Migration[6.0]
  def change
    remove_column :equipment, :rental_end_date, :datetime
  end
end
