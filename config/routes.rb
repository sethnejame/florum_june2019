Rails.application.routes.draw do
  get 'profile/home'
  get 'profile/something'
  devise_for :users
  root controller: :main, action: :index
end
