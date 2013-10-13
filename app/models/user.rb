require 'digest/md5'

class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_confirmation_of :password
  validates_presence_of :email
  validates_uniqueness_of :email

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

  def gravatar_hash
    Digest::MD5.hexdigest(self.email.strip.downcase)
  end

  def default_image
    default_url = "http://devbootcamp.com/imgs/teaching-large-sherif.png"
  end

end