Rails.application.routes.draw do
 resources :spellbooks
 resources :spells
 resources :users
 resources :login, only: [:new, :create]


 get '/', to: "users#welcome"
 get '/login', to: "users#login"
end
