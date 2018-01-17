Rails.application.routes.draw do
  resources :trainers do
  	resources :pokemons
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'
end
