class Answer < ActiveRecord::Base

  belongs_to :question
  belongs_to :profile
  has_one :upload

end
