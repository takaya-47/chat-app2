Rails.application.routes.draw do
  root to: "rooms#index"
  get 'messages/index'
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:create, :index]
  end
end
