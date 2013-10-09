class Question < ActiveRecord::Base
  validates :title, :body, :user_id, presence: true
  belongs_to :user
  has_many :answers
  has_many :users, through: :answers
end