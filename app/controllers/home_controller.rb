class HomeController < ApplicationController
  def index
    @videos = Video.page(params[:page]).per 20
    @top_film = Film.select("films.*, SUM(videos.impressions_count) as total")
                    .joins(:videos).group("films.id").order("total DESC")
                    .limit 10
  end
end
