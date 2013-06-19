require 'faker'

FactoryGirl.define do
  factory :evento do
    nombre { Faker::Lorem.words }
    lugar { Faker::Address.city }
    fecha "2013-06-19"
  end
end
