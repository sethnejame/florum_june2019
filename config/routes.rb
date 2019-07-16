Rails.application.routes.draw do
  devise_for :users
  root controller: :main, action: :index
  resources :posts, only: [:new, :create, :index, :show, :edit, :destroy]
end
