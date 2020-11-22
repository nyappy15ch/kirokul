Rails.application.routes.draw do
  devise_for :users
  root to: 'scores#index'

  resources :hobbies, only:[:new, :create]
end
