Rails.application.routes.draw do

  resources :spellbooks
  resources :spells
  resources :users
  resources :login, only: [:new, :create]
  delete "/logout", to: "login#destroy"




<<<<<<< HEAD
<<<<<<< HEAD
 get '/', to: "users#welcome"
 get '/login', to: "users#login"
=======
  get '/', to: "users#welcome"
  # get '/login', to: "users#login"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 05f3349e72bfc85a8af8ca4a297bf3d920955a9f
=======
 get '/', to: "users#welcome"
 get '/login', to: "users#login"

>>>>>>> aef19b0a896992df9447033344760500b4a653c7
end
