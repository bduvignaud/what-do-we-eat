class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :author
  has_and_belongs_to_many :tags
end
