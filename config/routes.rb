Rails.application.routes.draw do
  resources :wish_lists do
    resources :wish_items
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "wish_lists#index"
end
