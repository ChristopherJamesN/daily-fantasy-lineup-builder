Rails.application.routes.draw do
  resources :players
  resources :lineups do
    resources :players, only: [:show, :index]
  end
  devise_for :users
  root to: "lineups#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
