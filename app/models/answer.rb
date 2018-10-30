class Answer < ActiveRecord::Base
  mount_uploader :media, MediaUploader

  belongs_to :question
  belongs_to :profile

end
