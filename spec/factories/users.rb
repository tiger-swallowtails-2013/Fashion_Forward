require 'faker'

FactoryGirl.define do
  factory :user do
   password "password"
    password_confirmation "password"
    username Faker::Internet.user_name
    email { Faker::Internet.email }
  end
end