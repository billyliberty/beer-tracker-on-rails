Rails.application.routes.draw do

  resources :beers do
    resources :reviews
  end

  resources :users
  resources :reviews

  # Home Page

  # Login

  # Logout

  # Signup

end
