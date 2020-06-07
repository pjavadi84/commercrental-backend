Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :equipments
      resources :vendors
      resources :customers
    end
  end

  
end
