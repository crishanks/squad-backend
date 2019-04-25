class Api::V1::PlayersController < ApplicationController

  def index 
    @players = Player.all
    render json: @players
  end

  def create
    @player = Player.find_or_create_by(player_params)
  end

  private

  def player_params
    params.require(:player).permit(:team_player_id, :name, :height, :position, :experience_level, :description, :image)
  end
  
end
