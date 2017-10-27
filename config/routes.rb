Rails.application.routes.draw do

  default_url_options :host => "localhost3000"

  get 'activities/index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "homepages#homepage"

  get "/posts", to: 'posts#index'
  get "/posts/new", to: 'posts#new'
  post "/posts/search", to: 'posts#search'
  get "/posts/:id", to: 'posts#show'
  post "/posts", to: 'posts#create'
  get "/posts/:id/edit", to: 'posts#edit'
  patch "/posts/:id", to: 'posts#update'
  delete "/posts/:id", to: 'posts#destroy'

  post "post_categories", to: 'post_categories#create'

  get "/signup" => "users#new"
  get "/employer" => "users#employer"
  get "/freelancer" => "users#freelancer"
  get "/freelancer_2" => "users#freelancer_2"
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id/edit", to: 'users#edit'
  patch "/users/:id", to: 'users#update'
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  post "/users/search", to: 'users#search'


  get "/dashboards/freelancer", to: 'dashboards#freelancer'
  get "/dashboards/employer", to: 'dashboards#employer'

  get "/applications", to: 'applications#index'
  get "/applications/new", to: 'applications#new'
  get "/applications/:id", to: 'applications#show'
  post "/applications", to: 'applications#create'
  patch "/applications/:id", to: 'applications#update'


  get "/activities", to:'activities#index'
  delete "/clear", to: 'activities#destroy'

   # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

     # conversations
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
      post :restore
    end
  end

  resources :skills
  resources :profiles
  resources :portfolios
  resources :educations
  resources :employment_histories
  resources :other_experiences

  get "/freelancer_submissions", to: 'submissions#freelancer_submissions'
  get "/work_completed", to: 'submissions#work_completed'
  resources :submissions


  


end
