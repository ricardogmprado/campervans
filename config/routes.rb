Rails.application.routes.draw do
  resources :campervans
  devise_for :users
  root to: 'campervans#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :campervan do
  resources :bookings, only: [:create]
  resources :reviews, only: [:index]
  end

  resources :bookings, only: [:show, :index] do
  resources :reviews, only: [:create, :new]
  end

end
