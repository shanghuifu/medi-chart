Rails.application.routes.draw do
  resources :patients, only: [:index, :new, :create, :show] do
    resources :logs, only: :create
  end
  resources :reservations, except: :show
  root to: "reservations#index"
end