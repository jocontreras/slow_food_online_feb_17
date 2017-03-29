Rails.application.routes.draw do
  root controller: :index, action: :index
  resources :restaurants, only: [:show, :new, :create]
end
