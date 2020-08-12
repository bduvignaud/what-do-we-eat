class RecipesController < ApplicationController
  autocomplete :tag, :name

  def index
    @people_quantity = Recipe.pluck(:people_quantity).uniq.compact.sort
  end

  def show
    search_input = params["ingredient"].join(" ").downcase

    @recipes = Recipe.search_by_ingredient(search_input)

    if params['people'].present?
      @recipes = @recipes.where(people_quantity: params['people'])
    end

    if params['tag'].reject(&:empty?).present?
      tags = params['tag'].join(" ")
      @recipes = @recipes.search_by_tag(tags)
    end
  end
end
