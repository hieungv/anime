class ReviewsController < ApplicationController
  before_action :find_review, only: %i(show edit update destroy)
  before_action :find_video
  before_action :authenticate_user!, only: %i(new edit create)

  def create
    @review = Review.new review_params
    @review.user_id = current_user.id
    @review.video_id = @video.id

    respond_to do |format|
      if @review.save
        flash[:success] = "Thanh cong"
      else
        flash[:danger] = "That bai"
      end
      format.html{redirect_to film_video_path(@video.film_id, @video)}
      format.js
    end
  end

  def edit; end

  def update
    if @review.update review_params
      redirect_to film_video_path(@video.film.slug, @video)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    respond_to do |format|
      format.html{redirect_to video_path(@video)}
      format.js{render layout: false}
    end
  end

  private

  def find_review
    return if @review = Review.find_by(id: params[:id])
    flash[:danger] = t ".not_found-r"
    redirect_back fallback_location: film_videos_path
  end

  def find_video
    return if @video = Video.friendly.find(params[:video_id])
    flash[:danger] = t ".not_found-b"
    redirect_back fallback_location: film_videos_path
  end

  def review_params
    params.require(:review).permit(:star, :content)
  end
end
