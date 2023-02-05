Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
    member do
      get :show_favorite
    end
  end
  resources :sessions
  resources :users
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
