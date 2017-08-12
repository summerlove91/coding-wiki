Rails.application.routes.draw do

  resources :wikis
  resources :users, only: [:new, :create]

  root 'welcome#index'

end
