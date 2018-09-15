Rails.application.routes.draw do
  devise_for :users

  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  get 'reviews/create'
  get 'places/index'
  get 'places/show'
  get 'places/new'
  get 'places/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
