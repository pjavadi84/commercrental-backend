class Vendor < ApplicationRecord
    has_many :equipments, dependent: :destroy
end
