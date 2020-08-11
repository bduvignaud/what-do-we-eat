class RecipesController < ApplicationController
  def index
  end

  def show
    search_input = params["ingredient"].join(" ").downcase

    @recipes = Recipe.search_by_ingredient(search_input)
  end
end
