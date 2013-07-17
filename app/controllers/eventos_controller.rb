class EventosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]

  def index
    if params[:pasados] == 1
      @eventos = Evento.pasados.order("fecha ASC")
    else
      @eventos = Evento.proximos.order("fecha ASC")
    end
  end

  def eventos_pasados

  end
end
