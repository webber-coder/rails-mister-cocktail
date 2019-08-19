Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:new, :show, :create] do
    resources :doses, only: [:new, :create]
  end
  root to: "cocktails#index"
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:index, :new, :show, :create]
end
