Rails.application.routes.draw do
  get 'items/index'
  root "items#index"
  devise_for :users
  resources :items, only:[:new,:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
