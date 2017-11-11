Rails.application.routes.draw do

  resources :books
  resources :galleries
  
  devise_for :users

  root 'pages#home'

  get 'dashboard', to: 'pages#dashboard'
  get 'clinicas', to: 'pages#clinicas'

  post '/buy/:slug', to: 'transactions#create', as: :buy
  get '/pickup/:uuid', to: 'transactions#pickup', as: :pickup
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
