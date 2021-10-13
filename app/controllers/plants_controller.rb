class PlantsController < ApplicationController
    

    def index
        render json: Plant.all 
        
    end
    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end
    def create
        byebug
        plant= Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant
    end
end
