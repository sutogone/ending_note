Rails.application.routes.draw do

  devise_scope :user do
    root "devise/sessions#new"
  end
  devise_for :users, :controllers =>{
    sessions: 'devise/sessions'
  }
  
  resources :users, only: [:index] do
    resources :basic_information,         only: [:index, :new, :create, :update, :edit ]
    resources :pets,                      only: [:index, :new, :create, :update, :edit ]
    resources :contacts,                 only: [:index, :new, :create, :update, :edit ]
    resources :funerals,                 only: [:index, :new, :create, :update, :edit ]
    resources :assets,                   only: [:index, :new, :create, :update, :edit ]
  end
end
