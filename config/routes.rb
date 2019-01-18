Rails.application.routes.draw do
  resources :stories
  root to: 'pages#home'
  devise_for :users
  resources :users
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
