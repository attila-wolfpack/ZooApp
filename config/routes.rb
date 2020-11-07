Rails.application.routes.draw do
  devise_for :users

  root to: 'tracks#index'

  resources :users, only: %i[index destroy] do
    member do
      get :approve
    end
  end

  resources :tracks, except: :show do
    resources :check_points, except: :show
  end

  resources :animals, except: :show do
    resources :questions, except: :show
  end
end
