Rails.application.routes.draw do
  resources :owners, only: [:index, :show, :create]
  resources :dogs, only: [:index, :show]
end
