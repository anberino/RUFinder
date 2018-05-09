Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  get 'home/show'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#show"

  get 'login/index'

  post 'users/new', to: 'users#create'

  resources :users
  resources :login

  resources :foods
  resources :reviews
  resources :restaurants
end
