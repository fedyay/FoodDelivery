Rails.application.routes.draw do

  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#rests'
  get ':id' => 'pages#dishes', as: 'forest_show'
  get 'pages/adder', as: 'adder'
  get 'pages/deleter', as: 'deleter'
  get 'pages/alldeleter', as: 'alldeleter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
