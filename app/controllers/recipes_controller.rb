class RecipesController < ApplicationController
  def index
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.create
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.name = params[:name]
    @recipe.add_ingredients_by_name(params[:ingredients])

    if @recipe.save
      redirect_to @recipe
    else
      redirect_to 'www.google.com'
    end
  end
end
