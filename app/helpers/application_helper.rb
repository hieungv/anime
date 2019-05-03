module ApplicationHelper
  def list_categories
    @categories = Category.all
  end

  def score film
    @video_sum = Video.where(film_id: film).sum("impressions_count")
  end
end
