require 'faker'

FactoryGirl.define do
  factory :answer do |f|
    f.body { Faker::Lorem.characters(6..20) }
  end
end