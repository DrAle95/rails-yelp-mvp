Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/top', to: 'restaurants#top', as: 'top_restaurants' # # get "/restaurants/top", to: "restaurants#top", as: "top_restaurants"
  # get 'restaurants/:id/chef', to: 'restaurants#chef' # GET /restaurants/:id/chef

  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

end
