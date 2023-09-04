Rails.application.routes.draw do
  resources :characteristics
  get 'home/page'
  resources :apartments
  resources :buildings
  devise_for :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#page"
end
