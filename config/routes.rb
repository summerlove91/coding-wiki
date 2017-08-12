Rails.application.routes.draw do

  resources :wikis


  root 'welcome#index'

end
