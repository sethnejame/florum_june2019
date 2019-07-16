Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  root controller: :main, action: :index
end
