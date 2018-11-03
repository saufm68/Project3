class PlaylistsController < ApplicationController

  def index
    @playlist = Playlist.where(profile_id:1)
    @yourPlaylists = current_user.profile.playlists if current_user
  end

  def new
    @playlist = Playlist.all
  end

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.profile_id = current_user.id
    @playlist.save
    redirect_to playlists_path
  end

  def show
    @yourPlaylist = Playlist.find(params[:id])
  end

  def destroy
    @playlists = Playlist.all
    @playlist = @playlists.find_by(id:params[:id])
    @playlist.destroy

    redirect_to playlists_path
  end

  def remove_video_from_playlist
    @video = Video.find(params[:video_id])
    @playlist = @video.playlists.find(params[:playlist_id])

    if @playlist
      @video.playlists.delete(@playlist)
    end
    redirect_to @playlist
  end

  def add_video_to_playlist
    @video = Video.find(params[:video_id])
    @playlists = params[:playlists][:playlist_ids]
    @playlists.each do |playlist|
      unless playlist == ''
        @playlist = Playlist.find_by(id: playlist.to_i)
        @playlist.videos << @video
      end
    end
    redirect_to @video
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :playlist_id)
  end
end