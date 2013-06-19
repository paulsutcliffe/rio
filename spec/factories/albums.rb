require 'faker'

FactoryGirl.define do
  factory :album do
    codigo_embed { Faker::Internet.url }
  end
end
