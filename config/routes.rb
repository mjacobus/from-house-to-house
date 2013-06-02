FromHouseToHouse::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :cities
    resources :territories
  end
  
end
