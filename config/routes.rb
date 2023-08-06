Rails.application.routes.draw do
  get 'orders/index'
  devise_for :users
  resources :products
  resources :orders

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # P
  root "products#index"

  # Wompi
  post '/webhook', to: 'orders#wompi_webhook'
end
