class Vote < ActiveRecord::Base
  before_save :first_vote?

  belongs_to :answer
  belongs_to :user

  def first_vote?
    Vote.where("user_id = ?", self.user_id) && Vote.where("answer_id = ?", self.answer_id).empty?
  end
end