class Film < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  has_one_attached :thumbnail
  has_many :film_categories, dependent: :destroy
  has_many :categories, through: :film_categories
  has_many :videos, dependent: :destroy
  accepts_nested_attributes_for :film_categories
end
