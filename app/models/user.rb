class User < ActiveRecord::Base
  validates :username, :password, presence: true
  has_many :questions
end