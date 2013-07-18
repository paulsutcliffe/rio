require 'faker'

FactoryGirl.define do
  factory :album do
    titulo { Faker::Lorem.words }
    codigo_embed "https://soundcloud.com/rio-oficial/sets/relax-1"
    ano "1985"
    creditos { Faker::Lorem.paragraph }
  end
end
