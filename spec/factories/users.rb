require 'faker'

FactoryGirl.define do
  factory :user do |f|
    password "password"
    password_confirmation "password"
    username Faker::Internet.user_name
    id 1

    factory :user_with_answers do
      ignore do
        answer_count 5
      end

      after(:create) do |user, evaluator|
        FactoryGirl.create_list(:answer, evaluator.answer_count, user: user)
      end

      # See https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md#associations
    end
  end
end
