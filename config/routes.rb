Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  # get "items", to: "items#index"

  resources :warehouses, only: [:index, :show, :new, :create,]

  resources :items
end
