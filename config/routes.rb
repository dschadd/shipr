Rails.application.routes.draw do

  # devise_for :users

  resources :sessions, only: [:create, :destroy]

  namespace :api do

    resources :rates

    resources :users

    resources :shipments

    resources :couriers

    resources :consignees

    resources :shipping_addresses
    
  end

end
