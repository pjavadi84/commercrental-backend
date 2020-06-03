class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :fullname
      t.string :bussiness_name
      t.string :business_address
      t.string :business_city 
      t.string :business_state
      t.integer :phone_number
      t.string :email_address 
      t.string :category

      t.timestamps
    end
  end
end
