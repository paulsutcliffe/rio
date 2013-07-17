Rio::Application.routes.draw do

  match "/biografia" => "biografia#index"

  devise_for :admins

  scope(path_names: { new: 'nuevo', edit: 'editar' }) do

    resources :contactos

    resources :diapositivas

    resources :albums

    match "/eventos_pasados" => "eventos#index", :pasados => 1

    resources :eventos

  end

  root to: 'inicio#index'

 end
