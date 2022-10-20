Rails.application.routes.draw do
  get '/', to: 'blog#index'
  get '/contacto', to: 'blog#contacto'
end
