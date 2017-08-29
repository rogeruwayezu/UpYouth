Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "homepages#homepage"

  get "/posts", to: 'posts#index'
  get "/posts/new", to: 'posts#new'
  get "/posts/:id", to: 'posts#show'
  post "/posts", to: 'posts#create'
  get "/posts/:id/edit", to: 'posts#edit'
  patch "/posts/:id", to: 'posts#update'
  delete "/posts/:id", to: 'posts#destroy'

  post "post_categories", to: 'post_categories#create'

  get "/signup" => "users#new"
  get "/freelancer" => "users#freelancer"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/dashboards/freelancer", to: 'dashboards#freelancer'
  get "/dashboards/employer", to: 'dashboards#employer'

  get "/applications/new", to: 'applications#new'
  get "/applications/:id", to: 'applications#show'
  post "/applications", to: 'applications#create'


end
