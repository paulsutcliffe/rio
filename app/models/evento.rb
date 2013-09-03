class Evento < ActiveRecord::Base
  attr_accessible :fecha, :lugar, :nombre

  scope :proximos, lambda { where("fecha >= ?", Time.now).order("fecha ASC") }
  scope :pasados, lambda { where("fecha < ?", Time.now).order("fecha DESC") }
end
