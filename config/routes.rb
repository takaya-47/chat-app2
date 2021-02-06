Rails.application.routes.draw do
  root to: "messages#index" # 仮のルーティング
  get 'messages/index'
  devise_for :users
  resources :users, only: [:edit, :update]
end
