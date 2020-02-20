class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    p "__________________"

    if @cocktail.save
      p @cocktail
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    set_cocktail
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
