Rails.application.routes.draw do
  devise_for :users
  root to: 'venues#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :venues, only: [ :index, :show, :update]
  resources :bookings, except: [ :destroy ] do
    collection do
      get 'latest'
    end
  end

  get ':token', to: "bookings#show", token: /[A-Z]\d{5}/
end

