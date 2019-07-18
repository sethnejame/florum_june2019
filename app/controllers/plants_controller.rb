class PlantsController < ApplicationController

    def index
        @plants = Plant.all
      end
    
      def new
        @plant = Plant.new
      end
    
      def create
        @plant = current_user.plants.create(plant_params)
    
        if @plant.persisted?
          flash[:notice] = 'Your plant is now for sale!'
          redirect_to user_path(current_user)
        else
          flash[:alert] = 'Invalid Title or Text.'
          redirect_to new_plant_path
        end
      end

      def plant_params
        params.require(:plant).permit(:name, :details, :price, :category, :quantity)
      end
end
