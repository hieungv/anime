class Video < ApplicationRecord
<<<<<<< HEAD
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :clip, :thumbnail, presence: true
  validates :title, presence: true, uniqueness: {case_sensitive: false}
  has_one_attached :clip
  has_one_attached :thumbnail
  belongs_to :film
  def should_generate_new_friendly_id?
    name_changed? || super
  end
=======
  has_one_attached :clip
  has_one_attached :thumbnail
>>>>>>> actice storge
end
