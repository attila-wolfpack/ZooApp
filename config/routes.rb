Rails.application.routes.draw do
  devise_for :users

  root to: 'users#index'

  resources :users, only: %i[index destroy] do
    member do
      get :approve
    end
  end

  resources :tracks, except: :show do
    resources :check_points, except: :show
  end

  resources :animals, except: :show
end
