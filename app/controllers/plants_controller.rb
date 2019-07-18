class PlantsController < ApplicationController

  def index
    @plant = current_user.plants.all
  end
    
  def new
    @plant = Plant.new
  end
    
  def create
    plant = current_user.plants.create(plant_params)
    
    if plant.persisted?
      flash[:notice] = 'Your plant is now for sale!'
      redirect_to user_path(current_user)
    else
      flash[:alert] = 'Invalid entry.'
      redirect_to new_plant_path
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :details, :price, :category, :quantity)
  end
end
