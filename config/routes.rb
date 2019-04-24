Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams
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
    end
  end

end
