Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 

      resources :exercises, only: [:index, :create, :destroy]

      resources :workouts do 
        resources :exercises
      end 

      # get '/exercises' => 'exercises#index'
      # get '/exercises/:id' => 'exercises#show'
      # get '/pizzas' => 'pizzas#index'
      # get '/pizzas/:id' => 'pizzas#show'
      # post '/pizzas' => 'pizzas#create'
      # patch '/pizzas/:id' => 'pizzas#update'

      # post '/toppings' => 'toppings#create'
      # delete '/toppings/:id', to: 'toppings#destroy' 
      end 
    end 
   
end
