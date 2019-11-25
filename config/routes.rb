Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :chickens, only:[:index, :show] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only:[:index]

  namespace :owner do
    resources :chickens, only:[:index, :new, :create]
    resources :bookings, only:[:index] do
      member do
        patch "accept"
        patch "decline"
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
