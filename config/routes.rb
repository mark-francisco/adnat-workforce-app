Rails.application.routes.draw do
  namespace :api do
    get "/" => "users#index"
    get "/" => "organizations#index"
    get "/" => "shifts#index"
  end
end
