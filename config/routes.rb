Rails.application.routes.draw do
  get 'products', to: 'products#index'
  root 'home#index'
  resources :cruds
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
