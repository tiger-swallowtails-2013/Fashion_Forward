class ListQuestion < ActiveRecord::Base
  belongs_to :list
  belongs_to :question
end