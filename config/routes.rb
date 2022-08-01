Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: %i[index show new create] do
    # nest review inside restaurant block
    resources :reviews, only: %i[new create]
  end
end
