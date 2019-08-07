Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reviews, only: [:index, :new, :create]
  end
end
