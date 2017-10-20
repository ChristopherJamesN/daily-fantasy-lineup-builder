Rails.application.routes.draw do
  resources :players
  resources :lineups do
    resources :players, only: [:index, :new]
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get '/users/show', to: 'users#show'
  root to: "lineups#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
