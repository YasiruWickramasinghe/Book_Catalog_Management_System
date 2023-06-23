Rails.application.routes.draw do
  devise_for :users
  resources :books
  get 'home/about'
  root 'books#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
