class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @recipe.user = current_user
    if @recipe.save
      redirect_to @recipe, notice: "Recipe created successfully."
    else
      render :new
    end
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: "Recipe updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path, notice: "Recipe deleted."
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :cook_time, :difficulty, :instructions)
  end
end
