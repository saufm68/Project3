class VideosController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @videos = Video.all
  end

  def create
    @video = Video.new
    @video.video_url = video_params[:video_url]
    @video.name = video_params[:name]
    @video.profile_id = current_user.id

    @playlist = Playlist.find(video_params[:playlist_id])
    @playlist.videos << @video

    redirect_to @playlist
  end

  def show
    @video = Video.find(params[:id])
  end

  def destroy
    @video = Video.find(params[:id])
    @playlists = Playlist.all
    @playlists.each do |playlist|
      if playlist.videos.includes(@video)
        playlist.videos.delete(@video)
      end
    end

    @video.destroy

    redirect_to '/playlists'
  end

  private

  def video_params
    params.require(:video).permit(:name, :video_url, :playlist_id)
  end

end