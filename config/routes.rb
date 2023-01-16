Rails.application.routes.draw do
  devise_for :users
  root to: "splash#index"

    resources :categories, only: [:index, :new, :show, :create] do
      resources :transactions, only: [:index, :create, :destroy, :new] do
        resources :categorie_transactions, only: [:create]
      end
    end
end
