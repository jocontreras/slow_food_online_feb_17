Rails.application.routes.draw do

  root controller: :index, action: :index

  resources :restaurants, only: [:show, :new, :create] do
    resources :menus, only: [:show]
  end
end
