Rails.application.routes.draw do

  resources :wikis do
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :charges, only: [:new, :create]
  resources :downgrade, only: [:new, :create]

  root 'welcome#index'
  post 'downgrade/create'
end
