class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
  def show
    @ingredient = Ingredient.find(params[:id])
  end
  def new
    @ingredient = Ingredient.new
  end
  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to ingredient_path(@ingredient)
  end
  def edit
    @ingredient = Ingredient.find(params[:id])
  end
  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    @ingredient.save
    if @ingredient.valid?
      redirect_to @ingredient
    else 
      render 'new'
    end
  end
  def destroy
    @ingredient = Ingredient.find(params[:id])
  end
  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
