Rails.application.routes.draw do
  root to: 'sessions#login'
  
  resources :products
  
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
end
