class Review < ApplicationRecord
  belongs_to :user
  belongs_to :video
  validates_uniqueness_of :user_id, scope: :video_id
  validates_uniqueness_of :user_id, scope: :film_id
end
