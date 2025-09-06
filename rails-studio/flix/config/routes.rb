Rails.application.routes.draw do
  resources :genres
  get "signup" => "users#new"
  get "signin" => "sessions#new"

  resources :users
  root "movies#index"

  get "movies/filter/:filter" => "movies#index", as: :filtered_movies

  resources :movies do
    resources :reviews
    resources :favorites
  end

  resources :sessions, only: [ :new, :create, :destroy ]
end
