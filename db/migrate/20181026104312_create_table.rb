class CreateTable < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user
      t.string :username
      t.string :photo_url
      t.text :bio
      t.integer :exp
      t.timestamps
    end

    create_table :questions do |t|
      t.string :title
      t.text :description
      t.references :tag
      t.references :profile
      t.timestamps
    end

    create_table :answers do |t|
      t.string :description
      t.integer :vote
      t.references :profile
      t.references :question
      t.timestamps
    end

    create_table :tags do |t|
      t.string :name
      t.timestamps
    end

    create_table :favourites do |t|
      t.references :profile
      t.references :question
      t.timestamps
    end

    create_table :playlists do |t|
      t.string :type
      t.timestamps
    end

    create_table :videos do |t|
      t.string :video_url
      t.references :playlist
      t.timestamps
    end
  end
end
