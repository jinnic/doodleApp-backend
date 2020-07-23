Rails.application.routes.draw do
  resources :likes
  resources :points
  resources :lines
  resources :doodles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
