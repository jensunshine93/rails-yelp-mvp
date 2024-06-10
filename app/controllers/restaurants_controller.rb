class RestaurantsController < ApplicationController
        def index
          @restaurants = Restaurant.all
        end

        def new
            @restaurant = Restaurant.new
          end

          def show
            @restaurant = Restaurant.find(params[:id])
          end
end


get 'restaurants', to: 'restaurants#index'
get 'restaurants/new', to: 'restaurants#new' # Display the form for a new restaurant
post 'restaurants', to: 'restaurants#create'
get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
