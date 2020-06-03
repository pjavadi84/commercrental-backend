class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.string :business_name 
      t.string :business_address 
      t.string :city 
      t.string :state 
      t.string :zipcode 
      t.string :business_category
      t.integer :phone_number
      t.string :email_address 
      
      t.timestamps
    end
  end
end
