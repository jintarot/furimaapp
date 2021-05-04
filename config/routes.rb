Rails.application.routes.draw do
<<<<<<< Updated upstream
=======
  get 'items/index'
  root "items#index"
  devise_for :users
  resources :items, only:[:new,:create]
>>>>>>> Stashed changes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
