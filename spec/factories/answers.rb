require 'faker'

FactoryGirl.define do
  factory :answer do |f|
    f.body { Faker::Lorem.characters(6..20) }
    f.user_id { 1 }
  end
end