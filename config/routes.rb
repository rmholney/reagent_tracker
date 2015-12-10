Rails.application.routes.draw do
  resources :contacts
  resources :reagents
  
  get '/about', to: 'pages#about'
  root 'pages#home'
end
