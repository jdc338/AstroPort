Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :spaceships do
    resources :bookings, except: :index do
      resources :reviews
    end
  end

  resources :bookings, only: :index
  get "myspaceships", to: "spaceships#myindex"
  get "bookings", to: "reviews#new"
end
