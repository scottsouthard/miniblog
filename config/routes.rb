Rails.application.routes.draw do
  root to: 'posts#show'

  resources :posts
  resources :users
  
  get 'sessions/new' => "sessions#new"
  post 'sessions/create' => "sessions#create"
  get 'sessions/logout' => "sessions#logout"

end
