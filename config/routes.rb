Rails.application.routes.draw do
  resources :cocktails, except: [:edit, :update] do
    resources :doses, only [:new, :create, :delete]
  end
end



# class CoctailsController < ApplicationController
#   def index
#     @cocktails = Cocktail.all
#   end

#   def new
#     @cocktail = Cocktail.find(params[:cocktail_id])
#     @cocktail = Coctail.new
#   end

#   def create
#     Cocktail.create(doses_params)
#     redirect_to doses_path
#   end

#   def update
#     @rcocktail.update(doses_params)
#     redirect_to doses_path(@cocktail)
#   end
# end


# class DosesController < ApplicationController
#   def new
#     @dose = Dose.find(params[:dose_id])
#     @dose = Dose.new
#   end

#   def create
#     @dose = Dose.new(dose_params)
#     @dose = Restaurant.find(params[:restaurant_id])
#     @review.restaurant = @restaurant
#     @review.save
#     redirect_to restaurant_path(@restaurant)
#   end

#   private

#   def dose_params
#     params.require(:review).permit(:content, :rating)
#   end
# end
