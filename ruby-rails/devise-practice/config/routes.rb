Rails.application.routes.draw do
  devise_for :users, :paths => 'users'
  resources :users do 
  	resources :accounts
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'accounts#index'
end
