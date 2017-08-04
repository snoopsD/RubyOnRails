Rails.application.routes.draw do
  root 'searches#new'
  
  devise_for :users

  resource :search, only: [:new, :show, :create]
  resources :tickets, except: [:edit, :update]

  namespace :admin do

    get "index", to: 'base#index'

    resources :railway_stations do
      patch :update_position, on: :member
      patch :update_arrival, on: :member
      patch :update_departure, on: :member


    end

    resources :trains do
      resources :wagons, shallow: true
    end

    resources :routes, :wagons
    resources :tickets
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
