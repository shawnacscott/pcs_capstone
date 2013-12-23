Capstone::Application.routes.draw do
  devise_for :users

  root 'pages#home'

  match '/emails', to: 'emails#create', via: 'post'
end
