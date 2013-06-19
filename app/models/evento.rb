class Evento < ActiveRecord::Base
  attr_accessible :fecha, :lugar, :nombre
  extend FriendlyId
  friendly_id :nombre, use: :slugged

end
