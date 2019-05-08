class TopStarsController < ApplicationController
  def index
    @top_stars = Film.joins(videos: :reviews)
                     .select("films.*, avg(star) as total").order_desc_total
                     .group(:id).page(params[:page]).per 20
  end
end
