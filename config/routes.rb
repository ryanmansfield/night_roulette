Rails.application.routes.draw do
  get 'venue/index'
  get 'venue/show'
  get 'venue/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
