class Api::V1::VendorsController < ApplicationController
    def index
        vendors = Vendor.all
        render json: VendorSerializer.new(vendors)
    end
end
