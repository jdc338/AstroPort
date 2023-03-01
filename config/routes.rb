Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :spaceships do
    resources :reviews
    resources :bookings, except: :index
  end

  resources :bookings, only: :index
  get "myspaceships", to: "spaceships#myindex"



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
