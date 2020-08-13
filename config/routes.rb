Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # log in and Player management
      get '/players', to: 'players#index'
      post '/players', to: 'players#create'
      post '/login', to: 'auth#create'
      get '/profile', to: 'players#profile'
      get '/token', to: 'auth#jwt_log_in'

    end
  end
end
