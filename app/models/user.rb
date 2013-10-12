class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_confirmation_of :password

  has_many :questions
  has_many :votes


  def not_voted?(answer)
    Vote.where("user_id = ?", id).where("answer_id = ?", answer.id).empty?
  end

  def authored_answer?(answer)
    id == answer.user_id
  end

  def can_vote?(answer)
    !authored_answer?(answer) && not_voted?(answer)
  end
end