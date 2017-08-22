Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "homepages#homepage"

  get "/posts", to: 'posts#index'

  get "/signup" => "users#new"
  get "/freelancer" => "users#freelancer"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/dashboards/freelancer", to: 'dashboards#freelancer'
  get "/dashboards/employer", to: 'dashboards#employer'


end
