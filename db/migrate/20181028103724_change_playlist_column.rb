class ChangePlaylistColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :playlists, :type, :name
  end
end
