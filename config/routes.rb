Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get '/discography', to: 'pages#discography'
  get '/profile', to: 'pages#profile'
  resources :lives
  resources :posts
  resources :contacts, only: [:new, :create]
end
