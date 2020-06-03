class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name 
      t.integer :item_id 
      t.string :category 
      t.datetime :rental_start_date
      t.datetime :rental_end_date 
      t.boolean :availability 
      t.integer :price_per_hour 
      t.integer :price_per_day
      t.integer :price_per_month
      t.boolean :pickup
      t.boolean :delivery
      t.text :additional_comments
      t.integer :customer_id
      t.integer :vendor_id


      t.timestamps
    end
  end
end
