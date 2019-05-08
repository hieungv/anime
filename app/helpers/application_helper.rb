module ApplicationHelper
  def full_title page_title = ""
    base_title = "Anime Pro | Anime Vietsub"
    page_title.empty? ? base_title : base_title + " | " + page_title
  end

  def list_categories
    @categories = Category.all
  end

  def score film
    @video_sum = Video.where(film_id: film).sum("impressions_count")
  end

  def top_anime
    @top_film = Film.select("films.*, SUM(videos.impressions_count) as total")
                    .joins(:videos).group("films.id").order("total DESC")
                    .limit 10
  end

  def sum_view film
    film.videos.sum(:impressions_count)
  end

  def avg_star film
    @star = Film.joins(videos: :reviews).where(id: film).average(:star)
    if @star.nil?
      "-"
    else
      @star.round(2)
    end
  end
end
