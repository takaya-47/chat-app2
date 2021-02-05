Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index" # 仮のルーティング
end
