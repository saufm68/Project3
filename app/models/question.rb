class Question < ActiveRecord::Base
  mount_uploader :media, MediaUploader

  belongs_to :profile
  has_many :answers
  belongs_to :tag
  has_and_belongs_to_many :bookmarks

end
