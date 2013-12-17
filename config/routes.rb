Capstone::Application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy, :update]

  root 'pages#home'

  match '/signup', to: 'users#new',     via: 'get'
  match '/signin', to: 'sessions#new',  via: 'get'
end
