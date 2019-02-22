class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def update
    @cocktails = Cocktail.find(params[:id])
    @cocktails.update(cocktail_params)
    redirect_to cocktails_path(@cocktails)
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name, :ingredients)
  end
end
