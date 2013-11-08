require 'faker'

FactoryGirl.define do
  factory :contacto do
    nombre { Faker::Name.name }
    email { Faker::Internet.email }
    telefono "951754033"
    mensaje { Faker::Lorem.paragraph(sentence_count = 3, supplemental = false) }
  end
end
