module ReviewsHelper
  def count_reviews_user id
    @reviews_xh = Review.where(film_id: id).count
  end

  def count_reviews_star star, id
    @reviews_xh = Review.where(star: star, film_id: id).count
  end
end
