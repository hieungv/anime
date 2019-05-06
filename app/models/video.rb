class Video < ApplicationRecord
  is_impressionable counter_cache: true
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :clip, :thumbnail, presence: true
  validates :title, presence: true, uniqueness: {case_sensitive: false}
  has_one_attached :clip
  has_one_attached :thumbnail
  belongs_to :film

  def should_generate_new_friendly_id?
    view_changed? || super
  end
end
