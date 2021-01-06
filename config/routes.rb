Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :workouts, only: [:index, :create]

      get '/exercises' => 'exercises#index'
      get '/exercises/:id' => 'exercises#show'
      end 
    end 
   
end
