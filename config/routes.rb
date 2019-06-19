Rails.application.routes.draw do
<<<<<<< HEAD
  resources :spellbooks
  resources :spells
  resources :users
  resources :login, only: [:new, :create]
  delete "/logout", to: "login#destroy"
=======
 resources :spellbooks
 resources :spells
 resources :users
 resources :login, only: [:new, :create]

>>>>>>> 4e3cc8010dfedd531e5b6c5490d35e32ad23ff7e

 get '/', to: "users#welcome"
 get '/login', to: "users#login"
end
