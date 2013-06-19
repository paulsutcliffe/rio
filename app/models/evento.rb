class Evento < ActiveRecord::Base
  attr_accessible :fecha, :lugar, :nombre
end
