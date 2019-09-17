Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/show'
  get 'bookings/create'
  get 'users/new'
  get 'users/update'
  get 'users/show'
  get 'venues/index'
  get 'venues/show'
  get 'venues/update'
  devise_for :users
  root to: 'venues#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
