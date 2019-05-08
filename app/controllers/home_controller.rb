class HomeController < ApplicationController
  def index
    @videos = Video.all.page(params[:page]).per(20).order_desc_time
  end
end
