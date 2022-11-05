Rails.application.routes.draw do
  get '/index',             to: 'pages#index'
  root 'pages#articles'

  get '/articles',          to: 'pages#articles'
  get '/articles/new',      to: 'pages#new'
  post '/articles',         to: 'pages#create'

  delete '/articles/:id',   to: 'pages#delete'
  patch '/articles/:id',    to: 'pages#update'
  get '/articles/:id',      to: 'pages#show', as: :article
  get '/articles/:id/edit', to: 'pages#edit', as: :edit_article

end
