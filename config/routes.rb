Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:index, :show]
  resources :users, only: [:index, :show, :create, :new]
  resources :favorites, only: [:create, :new]
end
