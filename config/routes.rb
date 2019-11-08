Rails.application.routes.draw do

  resources :beers do
    resources :reviews
  end

  resources :users, only: [:create, :new, :show]
  resources :reviews

  # Home Page
  root "static#home"

  # Login
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  # Logout
  delete '/logout', to: 'sessions#destroy'

  # Signup
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/auth/facebook/callback', to: 'sessions#create'


end
