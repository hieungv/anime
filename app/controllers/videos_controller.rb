class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :find_film, except: %i(show)

  def index
    @videos = Video.all
  end

  def show
    @film = Film.friendly.find params[:film_id]
    @videos = @film.videos.all
  end

  def new
    @video = Video.new
  end

  def edit; end

  def create
    @video = Video.new(video_params)
    @video.film_id = @film.id
    respond_to do |format|
      if @video.save
        format.html{redirect_to films_path}
      else
        format.html{render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html{redirect_to @video}
        format.json{render :show, status: :ok, location: @video}
      else
        format.html{render :edit}
        format.json{render json: @video.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html{redirect_to videos_url}
    end
  end

  private

  def set_video
    @video = Video.friendly.find(params[:id])
  end

  def find_film
    return if @film = Film.friendly.find(params[:film_id])
    redirect_to films_path
  end

  def video_params
    params.require(:video).permit(:title, :description, :clip, :thumbnail,
      :episodes, :view)
  end
end
