class VideosController < ApplicationController

  def index
    # @playlist = Playlist.find(params[:playlist_id])
    @videos = Video.all


  end

  def new
    render plain:"test"

  end

  def create
    @video = Video.new
    @video.video_url = video_params[:video_url]
    @video.profile_id = current_user.id


    # @video.save
    # render plain: video_params.inspect

    @playlist = Playlist.find(video_params[:playlist_id])
    @playlist.videos << @video
    # redirect_to playlist_videos_path

    redirect_to @playlist

  end

  def show
    @video = Video.find(params[:id])
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