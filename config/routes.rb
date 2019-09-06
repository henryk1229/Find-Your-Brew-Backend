Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      get '/favorite/:id/brewery/:brewery_id', to: 'users#favorite'
      post '/login', to: 'auth#login'
      get '/profile', to: 'users#profile'
      get '/auto_login', to: 'auth#auto_login'
      resources :breweries, only: [:show, :index]
    end
  end
end
