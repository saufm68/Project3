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
    # render plain: params.inspect

    # render plain: "test"
    redirect_to '/playlists'

  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy

    redirect_to @playlist
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end

end