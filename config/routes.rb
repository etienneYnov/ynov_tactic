Rails.application.routes.draw do
  resources :articles
  resources :markers
  resources :tactics
  resources :sequences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
