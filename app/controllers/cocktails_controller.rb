class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    # Need new Cocktail instance + doses inst + ingredients
    @cocktail = Cocktail.new
  end

  def create
    @new_cocktail = Cocktail.new(cocktail_params)
    # @needed_ingredient = Ingredient.find(param[:ingredient_id])
    if @new_cocktail.save
      redirect_to cocktails_path(@new_cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit([:name])
  end

end
