Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :vans do
    resources :reservations, only: [:create]
  end

  resources :reservations, only: [:index, :destroy]
end
