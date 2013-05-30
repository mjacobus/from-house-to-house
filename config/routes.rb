FromHouseToHouse::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :territories
  end
  
end
