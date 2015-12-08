Rails.application.routes.draw do
  resources :contacts
  
  get '/home', to: 'pages#home'
  root 'pages#home'
end
