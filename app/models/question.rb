class Question < ActiveRecord::Base

  belongs_to :profile
  has_many :answers
  belongs_to :tag

end
