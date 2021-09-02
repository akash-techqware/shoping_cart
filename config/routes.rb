Rails.application.routes.draw do
  resources :products
  resources :orde_items

  root "home#index"
end
