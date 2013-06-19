Rio::Application.routes.draw do

  get "biografia/index"

  devise_for :admins

  resources :contactos


  resources :diapositivas


  resources :albums


  resources :eventos


  root to: 'inicio#index'

  get "inicio/index"

 end
