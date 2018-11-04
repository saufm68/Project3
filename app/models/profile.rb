class Profile < ActiveRecord::Base

  belongs_to :user
  has_many :questions
  has_many :answers
  has_many :playlists
  has_many :videos

end
