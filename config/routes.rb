Rails.application.routes.draw do

  resources :spellbooks, only: [:index]
  resources :spells
  resources :users
  resources :login, only: [:new, :create]
  delete "/logout", to: "login#destroy"

 get '/', to: "users#welcome"
 get '/login', to: "users#login"

end
