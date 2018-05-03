Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'login#index'

  get 'login/index'

  post 'users/new', to: 'users#create'

  resources :users
  resources :login
end
