Rails.application.routes.draw do

  resources :books
  devise_for :users

  root 'pages#home'

  get 'dashboard', to: 'pages#dashboard'
  get 'clinicas', to: 'pages#clinicas'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
