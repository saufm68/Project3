class VideosController < ApplicationController

  def index
    # @playlist = Playlist.find(params[:playlist_id])
    @videos = Video.all


  end

  def new
    render plain:"test"

  end

  def create
    @video = Video.new(video_params)
    @video.save
    # render plain: video_params.inspect

    @playlist = Playlist.find(params[:playlist_id])

    redirect_to playlist_videos_path
  end

  def show
    @videos = Video.all
    @video = @videos.find_by(id:params[:id])
    # puts "show stuff #{@video.id}"
  end

  def destroy
    @videos = Video.all
    @video = @videos.find_by(id:params[:id])
    @video.destroy

    @playlist = Playlist.find(params[:playlist_id])
    redirect_to playlist_videos_path
  end

  private

  def video_params
    params.require(:video).permit(:video_url, :playlist_id)
  end

end