class Api::V1::EquipmentsController < ApplicationController

    def index
        equipments = Equipment.all
        # options = {
        #     include: [:customer, :vendor]
        # }
        render json: EquipmentSerializer.new(equipments)

    end

    def create 
        equipment = Equipment.new(equipment_params)
        if equipment.save
            render json:equipment, status: :accepted
        else
            render json: {errors: equipment.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        equipment = Equipment.find(params[:id])
        render json: equipment, status: 200
    end

    def update
        equipment = Equipment.find(params[:id])
        equipment.update(equipment_params)
        render json: equipment, status: 200
    end

    def destroy
        equipment = Equipment.find(params[:id])
        equipment.delete
    end

    private 
    def equipment_params 
        params.require(equipment).permit(:name,:item_id,:category,:rental_start_date,:rental_end_date,:availability,:price_per_day,:price_per_hour,:price_per_month,:pickup,:delivery,:additional_comments)
    end
end
