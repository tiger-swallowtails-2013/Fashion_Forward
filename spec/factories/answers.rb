require 'faker'

FactoryGirl.define do
  factory :answer do |f|
    body Faker::Lorem.characters(6..20)
    user_id { 1 }
    question
  end
end
