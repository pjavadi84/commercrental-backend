class EquipmentSerializer
  include FastJsonapi::ObjectSerializer
  # previous CORRECT ONE:
  # attributes :name,:item_id,:category,:rental_start_date,:rental_end_date,:availability,:price_per_day,:price_per_hour,:price_per_month,:pickup,:delivery,:additional_comments, :customer_id, :customer, :vendor_id, :vendor, :image
  # MODIFIED below:
  attributes :name,:item_id,:category,:availability,:price_per_day,:price_per_hour,:price_per_month,:pickup,:delivery,:additional_comments, :customer_id, :customer, :vendor_id, :vendor, :image, :hours_required, :days_required, :months_required
  # belongs_to :customer
  # belongs_to :vendor
end
