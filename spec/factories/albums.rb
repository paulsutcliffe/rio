require 'faker'

FactoryGirl.define do
  factory :album do
    titulo { Faker::Lorem.words }
    codigo_embed { Faker::Internet.url }
    ano "1985"
    creditos { Faker::Lorem.paragraph }
  end
end
