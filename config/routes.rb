Rails.application.routes.draw do

  resources :wikis
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root 'welcome#index'

end
