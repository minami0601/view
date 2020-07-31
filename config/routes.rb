Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :creditcards do
    member do
      get 'buy'
    end
  end
  root to: "home#index"
end
