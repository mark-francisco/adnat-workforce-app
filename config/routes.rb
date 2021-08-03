Rails.application.routes.draw do
  namespace :api do
    get "/" => "users#index"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    get "/" => "organizations#index"
    get "/" => "shifts#index"
  end
end
