class Api::V1::TeamPlayersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index 
    @team_players = TeamPlayer.all
    render json: @team_players
  end

  def create
    @team_player = TeamPlayer.create(team_player_params)
    render json: @team_player
  end

  private

  def team_player_params
    params.require(:team_player).permit(:player_id, :team_id, :organizer)
  end
end
