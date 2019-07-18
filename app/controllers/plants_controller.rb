class PlantsController < ApplicationController
    def index
        @plants = Plant.all
      end
    
      def new
        @plant = Plant.new
      end
    
      def create
        @plant = current_user.plants.create(post_params)
    
        if @plant.persisted?
          flash[:notice] = 'Your plant is now for sale'
          redirect_to plants_path
        # else
        #   flash[:alert] = 'Invalid Title or Text.'
        #   redirect_to new_post_path
        # end
      end
end
