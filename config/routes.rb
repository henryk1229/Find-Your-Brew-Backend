Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      resources :breweries
      resources :users
      resources :favorites
    end
  end
end
