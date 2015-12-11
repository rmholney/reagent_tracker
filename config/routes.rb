Rails.application.routes.draw do
  resources :contacts
  resources :reagents
  resources :calibrators
  get '/about', to: 'pages#about'
  root 'pages#home'
end
