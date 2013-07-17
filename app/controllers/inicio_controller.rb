class InicioController < ApplicationController
  def index
    @eventos = Evento.proximos.limit(3)
    @diapositivas = Diapositiva.all
  end
end
