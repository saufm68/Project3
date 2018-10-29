class VideosController < ApplicationController

  def index
    @playlist = Playlist.find(params[:playlist_id])
    @video = Video.all

  end

  def new
    render plain:"test"

  end

  def create
    @video = Video.new(video_params)
    @video.save
    render plain: "saved"
  end

  def show
    byebug
    @video = Video.find
  end

  private

  def video_params
    params.require(:video).permit(:video_url, :playlist_id)
  end

end