Rails.application.routes.draw do
  resources :utilisateurs, only: [:new, :create]
  get '/index', '/', to: "default#index"
  post '/newpweep', to: "default#newpweep"
  get '/follow', to: "follow#follow"
  get '/unfollow', to: "follow#unfollow"
  get "/login", to: "login#index"
  get "/login/:id", to: "login#login", as: "connexion"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
