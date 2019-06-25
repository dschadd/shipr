Rails.application.routes.draw do

  # devise_for :users

  resources :sessions, only: [:create, :destroy]

  namespace :api do  

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/shipments" => "shipments#index"
    post "/shipments" => "shipments#create"
    get "/shipments/:id" => "shipments#show"
    patch "/shipments/:id" => "shipments#update"
    delete "/shipments/:id" => "shipments#destory"

    get "/couriers" => "couriers#index"
    post "/couriers" => "couriers#create"
    get "/couriers/:id" => "couriers#show"
    patch "/couriers/:id" => "couriers#update"
    delete "/couriers/:id" => "couriers#destory"

    get "/consignees" => "consignees#index"
    post "/consignees" => "consignees#create"
    get "/consignees/:id" => "consignees#show"
    patch "/consignees/:id" => "consignees#update"
    delete "/consignees/:id" => "consignees#destory"

    get "/shipping_addresses" => "shipping_addresses#index"
    post "/shipping_addresses" => "shipping_addresses#create"
    get "/shipping_addresses/:id" => "shipping_addresses#show"
    patch "/shipping_addresses/:id" => "shipping_addresses#update"
    delete "/shipping_addresses/:id" => "shipping_addresses#destory"

  end

end
