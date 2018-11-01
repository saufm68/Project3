class Video < ActiveRecord::Base
  has_and_belongs_to_many :playlists
  belongs_to :profile
end