Rails.application.routes.draw do
  root to: 'pages#home'
  
  devise_for :users
  get '/users/:id', to: 'users#show'

  resources :stories
  resources :users, only: [:show] do
    resources :stories, only: [:index]
  end

  # resources for comments
  resources :stories do
    resources :comments, shallow: true
  end

  resources :articles do
    resources :comments, only: [:index, :new, :edit, :create]
  end
  resources :comments, only: [:new, :edit, :update, :destroy, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
