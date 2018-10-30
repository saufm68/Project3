class Profile < ActiveRecord::Base
  mount_uploader :photo_url, PhotoUrlUploader

  belongs_to :user
  has_many :questions
  has_many :answers

end
