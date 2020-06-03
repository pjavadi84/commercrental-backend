class Customer < ApplicationRecord
    has_many :equipments
    has_secure_password
end
