class CocktailsController < ApplicationController
  before_action :cocktail_find, only: [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = cocktail.create(cocktail_params)
    redirect_to cocktail_path(@new_cocktail)
  end

  def destroy
    @cocktail = Cocktail.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def cocktail_find
    @cocktail = Cocktail.find(params[:id])
  end
end
