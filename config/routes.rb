Rails.application.routes.draw do
  resources :cocktails, except: [:edit, :update] do
    resources :doses, only: [:new, :create, :delete]
  end
end
