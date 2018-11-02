class Question < ActiveRecord::Base

  belongs_to :profile
  has_many :answers, dependent: :delete_all
  belongs_to :tag

end
