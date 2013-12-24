Capstone::Application.routes.draw do
  devise_for :users

  root 'pages#home'

  post  '/emails', to: 'emails#create'
  get   '/emails', to: 'emails#index'
end
