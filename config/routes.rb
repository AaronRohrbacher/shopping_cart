Rails.application.routes.draw do
  resources :products do
    resources :order_items
  end
end
