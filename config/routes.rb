Rails.application.routes.draw do
  resources :posts, only: [:index]

  resources :users, only: [:create]
  delete "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
end
