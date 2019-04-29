Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams
      post '/teams', to: 'teams#create'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :team_players
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
  resources :teams
  resources :team_players
  resources :players

end
