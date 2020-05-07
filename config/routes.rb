Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users, only:[:show, :update, :destroy, :create] do
      resources :characters, only:[:index, :show, :update, :destroy, :create]
    end

    resources :characters, only:[:index, :show]
    resources :sessions, only: [:create, :destroy]
    resources :images, only: [:index]
  end
