class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: %i(slugged finders)
  has_many :film_categories
  has_many :films, through: :film_categories

  validates_presence_of :name
end
