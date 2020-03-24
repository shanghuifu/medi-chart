Rails.application.routes.draw do
  resources :patients do
    resources :logs, only: :create
  end
  resources :reservations, except: :show
  root to: "reservations#index"
end