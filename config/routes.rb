Rio::Application.routes.draw do

  match "/biografia" => "biografia#index"

  devise_for :admins

  resources :contactos

  resources :diapositivas

  resources :albums

  resources :eventos

  root to: 'inicio#index'

 end
