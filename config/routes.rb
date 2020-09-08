Rails.application.routes.draw do
  devise_for :users
  resources :products, except: :show
  resources :items
  resources :users, only: :show do
    resources :addresses
  end
  root to: 'items#index'
  get '/registrations', to: 'items#registrations'
  get '/sessions', to: 'items#sessions'
  get 'logout', to: 'users#logout'
  get '/register', to: 'items#register'
  get '/product', to: 'items#product'
  get '/purchase', to: 'items#purchase'

  resources :products do
    collection do
      get 'category_children', defaults: { format: 'json' }
      get 'category_grandchildren', defaults: { format: 'json' }
    end
    member do
      get 'category_children', defaults: { format: 'json' }
      get 'category_grandchildren', defaults: { format: 'json' }
    end
  end

end
