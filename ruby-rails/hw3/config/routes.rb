Rails.application.routes.draw do
  resources :countries do 
  	resources :states
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
