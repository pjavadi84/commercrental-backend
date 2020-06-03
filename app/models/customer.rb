class Customer < ApplicationRecord
    has_many :equipments, dependent: :destroy
    
end
