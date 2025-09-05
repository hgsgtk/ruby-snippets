Rails.application.routes.draw do
  get "signup" => "users#new"
  get "signin" => "sessions#new"

  resources :users
  root "movies#index"

  resources :movies do
    resources :reviews
    resources :favorites
  end


  resources :sessions, only: [ :new, :create, :destroy ]
end
