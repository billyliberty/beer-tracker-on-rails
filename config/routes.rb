Rails.application.routes.draw do

  resources :beers do
    resources :reviews
  end

  resources :users
  resources :reviews

end
