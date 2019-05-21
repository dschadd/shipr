Rails.application.routes.draw do

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

  end

end
