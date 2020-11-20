Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users, only: [:index] do
    resources :basic_information, only: [:index, :new, :create, :update, :edit ]
    #resources :pets
    #resources :contacts
    #resources :funerals
    #resources :assets
  end
end
