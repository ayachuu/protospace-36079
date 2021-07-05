Rails.application.routes.draw do
  root "phototypes#index"
  resources :phototypes, only: :index
end
