Rails.application.routes.draw do
  get '/', to: 'pages#index'
  get '/contact', to: 'pages#contact'
end
