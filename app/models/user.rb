class User < ActiveRecord::Base
  validates :username, :password, presence: true
  has_many :questions
  has_many :answers, through: :questions
end