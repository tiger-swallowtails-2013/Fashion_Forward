require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.password { Faker::Lorem.characters(6..20) }
    f.username { Faker::Internet.user_name }
    f.id { 1 }
  end
end