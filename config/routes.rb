Capstone::Application.routes.draw do
  devise_for :users

  root 'pages#home'

  match '/users/signup', to: 'devise/sessions#new',     via: 'get'
  match '/users/signin', to: 'devise/sessions#create',  via: 'post'
  
end
