class PlantsController < ApplicationController

    # index
    def index
        plants = Plant.all
        render json: plants, status: :ok
    end

    # show
    def show
     plants = Plant.find( params[:id])
     render json: plants
    
   end

#    create
   def create
    plant = Plant.create(plant_params)
    render json: plant, status: :created
   end
   private
#    all methods after this are private
   def plant_params
    params.permit(:name, :image, :price)
   end
end
