Rails.application.routes.draw do
  resources :positions
  resources :markers
  resources :tactics do 
  	resources :sequences
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
