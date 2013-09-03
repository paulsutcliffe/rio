class Evento < ActiveRecord::Base
  attr_accessible :fecha, :lugar, :nombre

  scope :proximos, lambda { where("fecha >= ?", Time.now).order("fecha DESC") }
  scope :pasados, lambda { where("fecha < ?", Time.now).order("fecha DESC") }
end
