FactoryBot.define do
  factory :recipe do
    rate { 1 }
    budget { "Not so expensive" }
    prep_time { 10 }
    name { "Tomatoes flambé" }
    difficulty { "Easy" }
    people_quantity { 2 }
    cook_time { 5 }
    total_time { 15 }
    image { "" }
    nb_comments { 12 }
  end
end
