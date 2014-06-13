class Answer < ActiveRecord::Base
  belongs_to :questions
  validates :answer, length: { minimum: 50,
    too_short: "Must be %{count} characters long!!"}
end
