Rails.application.routes.draw do
  resources :cocktails, except: [:edit, :update] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
