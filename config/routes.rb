Rails.application.routes.draw do
  resources :contacts
  
  get '/about', to: 'pages#about'
  root 'pages#home'
end
