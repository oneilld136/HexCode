Rails.application.routes.draw do
  resources :spellbooks
  resources :spells
  resources :users
  resources :login, only: [:new, :create]
  delete "/logout", to: "login#destroy"

  get '/', to: "users#welcome"
  get '/login', to: "users#login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
