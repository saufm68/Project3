class JoinTablePlaylist < ActiveRecord::Migration[5.2]
  def change
    drop_table :videos
    drop_table :playlists

    create_table :playlists do |t|
      t.string :name
      t.references :profile
      t.timestamps
    end

    create_table :videos do |t|
      t.string :name
      t.string :video_url
      t.references :profile
      t.timestamps
    end

    create_table :playlists_videos do |t|
      t.references :playlist
      t.references :video
      t.timestamps
    end

  end
end
