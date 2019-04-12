class FilmCategoriesController < ApplicationController
  before_action :set_film_category, only: [:show, :edit, :update, :destroy]

  def index
    @film_categories = FilmCategory.all
  end

  def show; end

  def new
    @film_category = FilmCategory.new
  end

  def edit; end

  def create
    @film_category = FilmCategory.new(film_category_params)

    respond_to do |format|
      if @film_category.save
        format.html{redirect_to @film_category}
      else
        format.html{render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @film_category.update(film_category_params)
        format.html{redirect_to @film_category}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @film_category.destroy
    respond_to do |format|
      format.html{redirect_to film_categories_url}
    end
  end

  private

  def set_film_category
    @film_category = FilmCategory.find(params[:id])
  end

  def film_category_params
    params.require(:film_category).permit(:film_id, :categories_id)
  end
end
