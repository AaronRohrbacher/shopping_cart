Rails.application.routes.draw do

  root 'products#index'

  resource :cart, only: [:show]

  resources :products
  resources :order_items
end
