namespace :json do
  desc 'Add tags and associated images'
  task parse: :environment do
    puts 'Parsing recipes JSON'

    file = File.read("doc/recipes.json")
    file.gsub!("\n", ",")
    file.gsub!(/,+/, ',')
    file = "[#{file}]"
    json = JSON.parse(file)

    puts "Creating #{json.size} recipes"

    json.each do |recipe|
      params = {
        name: recipe["name"],
        difficulty: recipe["difficulty"],
        rate: recipe["rate"].to_i,
        budget: recipe["budget"],
        prep_time: recipe["prep_time"].to_i,
        cook_time: recipe["cook_time"].to_i,
        total_time: recipe["total_time"].to_i,
        image: recipe["image"],
        people_quantity: recipe["people_quantity"],
        author: build_author(recipe),
        ingredients: build_ingredients(recipe["ingredients"]),
        tags: build_tags(recipe["tags"])
      }
      Recipe.create(params)
    end

    puts 'Done.'
  end

  private

  def build_author(params)
    Author.find_or_create_by(name: params["author"])
  end

  def build_ingredients(params)
    params.map do |ingredient|
      Ingredient.new(name: ingredient)
    end
  end

  def build_tags(params)
    params.map do |tag|
      Tag.find_or_create_by(name: tag)
    end
  end
end
