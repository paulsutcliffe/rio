Rio::Application.routes.draw do

  match "/biografia" => "biografia#index"

  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  scope(path_names: { new: 'nuevo', edit: 'editar' }) do

    resources :contactos

    resources :diapositivas

    resources :albums

    match "/eventos_pasados" => "eventos#eventos_pasados"

    resources :eventos

  end

  root to: 'inicio#index'

 end
