class InicioController < ApplicationController
  def index
    @diapositivas = Diapositiva.all
  end
end
