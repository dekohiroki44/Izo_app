Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'pages/about'
  resources :lives
  resources :posts
end
