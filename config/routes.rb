Rails.application.routes.draw do
  devise_for :users
  root to: 'venues#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues, only: [ :index, :show, :update]
  resources :bookings, except: [ :destroy ]

end

