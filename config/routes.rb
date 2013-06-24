FromHouseToHouse::Application.routes.draw do
  devise_for :users

  root to: 'publisher/homes#index'

  namespace :admin do
    resources :areas
    resources :cities
    resources :homes
    resources :territories
    resources :users
  end

  namespace :publisher do
    resources :homes do
      resources :events
    end
  end
  
end
