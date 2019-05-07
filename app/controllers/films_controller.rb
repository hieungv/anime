class FilmsController < ApplicationController
  authorize_resource
  before_action :set_film, only: [:show, :edit, :update, :destroy]
  before_action :list_categories, only: %i(new edit)
  def index
    @films = Film.friendly.all
  end

  def show
    @videos = @film.videos.all
  end

  def new
    @film = Film.new
    @film.film_categories.new
  end

  def edit; end

  def create
    @film = Film.new(film_params)
    respond_to do |format|
      if @film.save
        format.html{redirect_to @film}
      else
        format.html{render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @film.update(film_params)
        format.html{redirect_to @film}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @film.destroy
    respond_to do |format|
      format.html{redirect_to films_url}
    end
  end

  private

  def set_film
    @film = Film.friendly.find(params[:id])
  end

  def list_categories
    @categories = Category.all.select(:id, :name)
                          .map{|category| [category.name, category.id]}
  end

  def find_video
    @video = Video.friendly.find_by(id: params[:id])
  end

  def film_params
    params.require(:film).permit(:name, :release_year, :thumbnail,
      :description, category_ids: [], film_categories_attributes:
        [:id, :film_id, :category_id])
  end
end
