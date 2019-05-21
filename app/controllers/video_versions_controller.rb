class VideoVersionsController < ApplicationController
  before_action :set_video_version, only: [:show, :edit, :update, :destroy]

  def index
    @video_versions = VideoVersion.all
  end

  def show; end

  def new
    @video_version = VideoVersion.new
  end

  def edit; end

  def create
    @video_version = VideoVersion.new(video_version_params)

    respond_to do |format|
      if @video_version.save
        format.html{redirect_to @video_version}
      else
        format.html{render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @video_version.update(video_version_params)
        format.html{redirect_to @video_version}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @video_version.destroy
    respond_to do |format|
      format.html{redirect_to video_versions_url}
    end
  end

  private

  def set_video_version
    @video_version = VideoVersion.find(params[:id])
  end

  def video_version_params
    params.require(:video_version).permit(:video_id, :version_id)
  end
end
