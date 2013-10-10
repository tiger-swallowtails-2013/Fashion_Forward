require 'faker'

FactoryGirl.define do
  factory :question do |f|
    f.title { Faker::Lorem.characters(3..7) }
    f.body { Faker::Lorem.sentences(sentence_count = 2) }
    f.user_id { 1 }
  end
end