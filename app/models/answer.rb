class Answer < ActiveRecord::Base
  belongs_to :question

  validates :user_id, presence: true
  validates :question_id, presence: true
  validates :answer, presence: true, length: {minimum: 10}

end
