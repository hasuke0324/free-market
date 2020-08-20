Rails.application.routes.draw do
  devise_for :users
  resources :items
  root 'items#index'
  get '/registrations', to: 'items#registrations'
  get '/sessions', to: 'items#sessions'
  get '/logout', to: 'items#logout'
  get '/register', to: 'items#register'
  get '/product', to: 'items#product'
end
