class TopViewsController < ApplicationController
  def index
    @top_views = Film.select("films.*, SUM(videos.impressions_count) as total")
                     .joins(:videos).group("films.id").order_desc_total
                     .page(params[:page]).per 20
  end
end
