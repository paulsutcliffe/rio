class EventosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :eventos_pasados]

  def index
    @eventos = Evento.proximos.order("fecha ASC")
  end

  def eventos_pasados
    @eventos = Evento.pasados.order("fecha ASC")
  end

  protected
    def collection
      @eventos ||= end_of_association_chain.paginate(:page => params[:page], :per_page => 3)
    end
end
