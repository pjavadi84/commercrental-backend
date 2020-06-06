class Api::V1::VendorsController < ApplicationController
    vendors = Vendor.all
    render json: VendorSerializer.new(vendors)
end
