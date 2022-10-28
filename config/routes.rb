Rails.application.routes.draw do
  get '/index', to: 'pages#index'
  root 'pages#index'

  get 'articles', to: 'pages#articles'
  get '/article/new', to: 'pages#new'
  post '/articles', to: 'pages#create'
end
