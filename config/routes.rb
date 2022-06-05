Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :warehouses, only: [:index, :show, :new, :create,] do
    # resources :items

    get    "items",          to: "items#index"

    get    "items/new",      to: "items#new",  as: :new_item
    post   "items",          to: "items#create"

    # NB: The `show` route needs to be *after* `new` route.
    get    "items/:id",      to: "items#show", as: :item

    get    "items/:id/edit", to: "items#edit", as: :edit_item
    patch  "items/:id",      to: "items#update"

    delete "items/:id",      to: "items#destroy", as: :delete_item
  end
end
