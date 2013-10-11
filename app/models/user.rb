class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_confirmation_of :password

  has_many :questions
  has_many :votes

end