Rails.application.routes.draw do
  devise_for :users

  root 'places#index'

  # resources :reviews
  resources :places do
    resources :reviews
  end
end
