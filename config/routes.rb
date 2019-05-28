Rails.application.routes.draw do
  resources :campervans
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :campervan do
  resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :index] do
  resources :reviews, only: [:create]
  end
end
