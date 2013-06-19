require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

FactoryGirl.create :admin

12.times do
  FactoryGirl.create :evento
end

6.albums do
  FactoryGirl.create :album
end

3.albums do
  FactoryGirl.create :diapositiva
end

12.albums do
  FactoryGirl.create :contacto
end
