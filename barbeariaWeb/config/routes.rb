Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  resources :produtos
  resources :enderecos
  resources :barbearia
  resources :usuarios
  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
