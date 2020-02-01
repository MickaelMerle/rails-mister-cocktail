class DosesController < ApplicationController
  def new
    @dose = Dose.find(params[:dose_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def delete
  end

  private

  def dose_params
    params.require(:review).permit(:content, :rating)
  end
end

end

