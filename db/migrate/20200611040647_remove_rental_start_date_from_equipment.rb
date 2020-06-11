class RemoveRentalStartDateFromEquipment < ActiveRecord::Migration[6.0]
  def change
    remove_column :equipment, :rental_start_date, :datetimed
  end
end
