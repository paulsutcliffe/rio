class EventosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index, :eventos_pasados]

  def index
    @eventos = Evento.proximos.paginate(:page => params[:page], :per_page => 30).order("fecha ASC")
  end

  def eventos_pasados
    @eventos = Evento.pasados.paginate(:page => params[:page], :per_page => 30).order("fecha ASC")
  end

  def create
    create! { eventos_path }
  end

  def update
    update! { eventos_path }
  end

end
