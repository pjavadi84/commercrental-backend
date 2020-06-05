class VendorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :business_name, :business_address, :city, :state, :zipcode, :business_category, :phone_number, :email_address
end
