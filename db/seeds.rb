# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tags = Tag.create([
  { name: 'others' },
  { name: 'grammar' },
  { name: 'vocabulary' },
  { name: 'translate' },
  { name: 'pronunciation' }
])

playlists = Playlist.create([
  { name: 'Getting Started'},
  { name: 'Intermediate'},
  { name: 'Advanced'},
])

videos = Video.create([
  { video_url: "https://www.youtube.com/embed/wpC9bz8Comw", playlist_id: 1},
  { video_url: "https://www.youtube.com/embed/X7q1J04xeS8", playlist_id: 2},
  { video_url: "https://www.youtube.com/embed/M2_L8YVCO1Y", playlist_id: 3},
])
