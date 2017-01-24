Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  get '/pages/home'
  resources :products
end
