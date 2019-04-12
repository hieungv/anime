class Category < ApplicationRecord
  has_many :film_categories
  has_many :films, through: :film_categories

  validates_presence_of :name
end
