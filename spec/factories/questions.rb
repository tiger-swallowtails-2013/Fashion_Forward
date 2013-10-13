require 'faker'

FactoryGirl.define do
  factory :question do
    title Faker::Lorem.characters(3..7)
    body Faker::Lorem.sentences(sentence_count = 2).join("\n")
    user_id { 1 }

    factory :valid_question do
    end

    factory :invalid_question do
      title ""
      body ""
    end
  end
end
