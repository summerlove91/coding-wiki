Rails.application.routes.draw do

  get 'downgrade/new'

  get 'charges/new'

  resources :wikis
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :charges, only: [:new, :create]

  root 'welcome#index'

end
