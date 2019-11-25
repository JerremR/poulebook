Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chickens, only:[:index, :show, :new, :create] do
    resources :bookings
  end

  resources :bookings, only:[:index, :show, :create]

  namespace :owner do
    resources :chickens, only:[:index, :new, :create]
    ressources :bookings, only:[:index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
