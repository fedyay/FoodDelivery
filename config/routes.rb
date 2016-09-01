Rails.application.routes.draw do

  scope :admin do
    resources :rests, :dishes, :categories
    get 'dishes/:id/edit' => 'dishes#edit', as: 'dish_edit'
    get 'rests/:id/edit' => 'rests#edit', as: 'rest_edit'
    get 'rests/:id' => 'rests#show', as: 'rest_show'
    get 'dishes/:id' => 'dishes#show', as: 'dish_show'
  end
  root 'pages#rests'
  get ':id' => 'pages#dishes', as: 'forest_show'
  get 'pages/adder'
  get 'pages/deleter'
  get 'pages/alldeleter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
