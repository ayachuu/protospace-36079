Rails.application.routes.draw do
  devise_for :users
  root "phototypes#index"
  resources :phototypes, only: [:index, :new, :create]
end
