Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users, only: %i[index destroy] do
    member do
      get :approve
    end
  end
end
