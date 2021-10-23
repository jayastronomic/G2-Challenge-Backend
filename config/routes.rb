Rails.application.routes.draw do
 post "/login", to: "sessions#create" 
 get "/is_logged_in", to: "sessions#is_logged_in?"
 delete '/logout', to: "sessions#destroy"
  
  resources :visitors, only: [:create]
  resources :employees, only: [:index]
  resources :votes, only: [:create]
end
