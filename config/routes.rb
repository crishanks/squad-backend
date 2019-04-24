Rails.application.routes.draw do
  resources :teams
  resources :team_players
  resources :players
end
