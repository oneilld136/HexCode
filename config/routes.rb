Rails.application.routes.draw do
 resources :spellbooks
 resources :spells
 resources :users
 resources :login, only: [:new, :create]


<<<<<<< HEAD
 get '/', to: "users#welcome"
 get '/login', to: "users#login"
=======
  get '/', to: "users#welcome"
  # get '/login', to: "users#login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 05f3349e72bfc85a8af8ca4a297bf3d920955a9f
end
