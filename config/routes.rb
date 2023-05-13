Rails.application.routes.draw do

  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show] # this gives me all the routes
  
end
