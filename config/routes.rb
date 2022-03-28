Rails.application.routes.draw do
  devise_for :users
  root to: "meetings#index"

  resources :meetings do
    resources :slots, only: [:new, :create]
  end

  resources :slots, only: [:edit,:update,:destroy]


end
