require 'faker'

FactoryGirl.define do
  factory :question do |f|
    f.title { Faker::Lorem.characters }
    f.body { Faker::Lorem.characters }
    f.user_id { 1 }
  end
end