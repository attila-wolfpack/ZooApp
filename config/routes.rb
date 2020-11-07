Rails.application.routes.draw do
  devise_for :users

  root to: 'users#index'

  resources :users, only: %i[index destroy] do
    member do
      get :approve
    end
  end
end
