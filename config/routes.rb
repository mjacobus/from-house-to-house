FromHouseToHouse::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :areas
    resources :cities
    resources :homes
    resources :territories
    resources :users
  end
  
end
