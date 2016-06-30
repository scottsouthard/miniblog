Rails.application.routes.draw do
  root to: 'posts#show'

  get 'sessions/new' => "sessions#new"
  post 'sessions/create' => "sessions#create"
  get 'sessions/logout' => "sessions#logout"

end
