class CustomerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :fullname,:bussiness_name,:business_address, :business_city, :phone_number,:email_address,:category
end
