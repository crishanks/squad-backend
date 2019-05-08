Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :matches
    end
  end
  
  namespace :api do
    namespace :v1 do
      resources :potential_matches
    end
  end

  namespace :api do
    namespace :v1 do
      resources :players
      post '/login', to: 'auth#create'
      post '/players', to: 'players#create'
      get '/profile', to: 'players#profile'
    end
  end

  # Resources
  resources :players

end
