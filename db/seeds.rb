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

users = User.create(
  email: 'admin@gmail.com',
  password: 'admin1234'
)

profiles = Profile.create(
  user_id: 1,
  username: 'admin',
  photo_url: 'admin.jpeg',
  bio: 'Admin',
  exp: 0,
  level: 1
)

videos = Video.create([
  { name: "Beginner 1" , video_url: "https://www.youtube.com/embed/wpC9bz8Comw", profile_id: 1},
  { name: "Intermediate 1", video_url: "https://www.youtube.com/embed/X7q1J04xeS8", profile_id: 1},
  { name: "Advanced 1", video_url: "https://www.youtube.com/embed/M2_L8YVCO1Y", profile_id: 1}
])

playlists = Playlist.create([
  { name: 'Getting Started', video_ids: [videos[0].id], profile_id: 1},
  { name: 'Intermediate', video_ids: [videos[1].id], profile_id: 1},
  { name: 'Advanced', video_ids: [videos[2].id], profile_id: 1}
])
