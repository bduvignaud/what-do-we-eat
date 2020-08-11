class Recipe < ApplicationRecord
  include PgSearch::Model

  has_many :ingredients
  belongs_to :author
  has_and_belongs_to_many :tags

  pg_search_scope :search_by_ingredient, associated_against: {
    ingredients: :name
  }
end
