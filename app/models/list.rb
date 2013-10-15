class List < ActiveRecord::Base
  belongs_to :user
  has_many :list_questions
  has_many :questions, through: :list_questions
  validates_presence_of :name
  validates_presence_of :user_id
end
