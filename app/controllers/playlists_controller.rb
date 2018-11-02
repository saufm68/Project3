class PlaylistsController < ApplicationController

  def index
    @playlist = Playlist.where(profile_id:1)


    @yourPlaylists = current_user.profile.playlists if current_user
    # @newPlaylist = Playlist.new
  end


  def new
    @playlist = Playlist.all

  end

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.profile_id = current_user.id
    @playlist.save
    # redirect_to '/playlists'
    redirect_to playlists_path

  end

  def destroy
    # @playlist = Playlist.find(params[:id])

    # puts params[id]
    @playlists = Playlist.all
    @playlist = @playlists.find_by(id:params[:id])
    @playlist.destroy

    redirect_to playlists_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :playlist_id)
  end

end