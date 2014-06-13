class Question < ActiveRecord::Base
  has_many :answers
  validates :title, length: { minimum: 40,
  too_short: "Must be 40 characters long!!" }
  validates :description,  length: { minimum: 150,
  too_short: "Must be 150 characters long!!"  }
end
