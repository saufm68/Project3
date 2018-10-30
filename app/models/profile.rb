class Profile < ActiveRecord::Base

  belongs_to :user
  has_many :questions
  has_many :answers
  has_and_belongs_to_many :bookmarks

end