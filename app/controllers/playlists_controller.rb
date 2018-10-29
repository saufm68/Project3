class PlaylistsController < ApplicationController

  def index
    @playlist = Playlist.all


  end


  def new
    @playlist = Playlist.all

  end

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.save
    # redirect_to '/playlists'
    redirect_to playlists_path

  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy

    redirect_to playlists_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end

end