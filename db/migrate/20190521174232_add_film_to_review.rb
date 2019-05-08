class AddFilmToReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :film, foreign_key: true
  end
end
