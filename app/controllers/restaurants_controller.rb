class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    def index
        render json: Restaurant.all
    end

    def show
        restaurant = find_restaurant
        render json: restaurant, serializer: RestaurantWithPizzasSerializer
    end

    def destroy
        restaurant = find_restaurant.destroy
        head :no_content
        
    end

    private

    def record_not_found_response(exception)
     render json: { error:"Restaurant not found"}, status: :not_found
    end

    def find_restaurant
        Restaurant.find(params[:id])
    end
end
