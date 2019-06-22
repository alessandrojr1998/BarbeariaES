Rails.application.routes.draw do
  #devise_for :admins, path: 'admins', controllers: { sessions: "admins/sessions" }
  #get 'home/index'
  #root :to => "home#index"

  #devise_for :users

  resources :usuarios

  def devise_path_names
    { sign_in: "login", sign_up: "", registration: "register", sign_out: "logout" }
  end
  devise_for :users,  path_names: devise_path_names #-> url.com/users/login
  devise_for :admins, controllers: { sessions: "admins/sessions", registrations: "admins/registrations" }, path_names: devise_path_names #-> url.com/admins/login
  #devise_for :admins, controllers: { sessions: "devise#sessions", registrations: "devise#registrations" }, path_names: devise_path_names #-> url.com/admins/login
  devise_scope :user do
    get 'users/login',  to: 'users#sessions#new',  as: 'user_login'
    #resources :produtos
    #resources :enderecos
    #resources :barbearia
     root :to => "home#index"
     get 'sobre', to: 'home#sobre'
     get 'contato', to: 'home#contato'
  end

  devise_scope :admin do
    get 'admins/login',  to: 'admins#sessions#new', as: 'admin_login'
    delete 'admins/logout', to: 'devise/sessions#destroy', as: 'admin_logout'
    resources :produtos
    resources :enderecos
    resources :barbearia
    root :to => "home#index"
    get 'sobre', to: 'home#sobre'
    get 'contato', to: 'home#contato'
  end
  #root :to => "home#index"
  #Usados de acordo com seus controllers
  #devise_for :users, path: 'users', controllers: { sessions: "users/sessions" etc....}



end


