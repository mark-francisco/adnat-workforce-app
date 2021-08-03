Rails.application.routes.draw do
  namespace :api do

    # AUTH views
    # sign up
    post "/users" => "users#create"
    # log in
    post "/sessions" => "sessions#create"

    # USER views
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    # ORGANIZATIONS views
    get "/organizations" => "organizations#index"
    get "/organizations/:id" => "organizations#show"
    post "/organizations" => "organizations#create"
    patch "/organizations/:id" => "organizations#update"
    delete "/organizations/:id" => "organizations#destroy"

    # SHIFTS views
    get "/shifts" => "shifts#index"
    get "/shifts/:id" => "shifts#show"
    post "/shifts" => "shifts#create"
    patch "/shifts/:id" => "shifts#update"
    delete "/shifts/:id" => "shifts#destroy"
  end
end
