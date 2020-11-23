Rails.application.routes.draw do
  devise_for :users
  root to: 'hobbies#index'

  resources :hobbies, only:[:index, :new, :create] do
    resources :scores, only:[:index, :create]
  end
end
