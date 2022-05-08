Rails.application.routes.draw do
  resources :gear_items
  passwordless_for :users
  resources :users
  root 'static_pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
