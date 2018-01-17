Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#landing'
  get '/hello/:name', to: 'static#hello' #redirect to static controller and hello method
  resources :recipes

end
