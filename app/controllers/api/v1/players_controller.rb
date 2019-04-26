class Api::V1::PlayersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index 
    @players = Player.all
    render json: @players
  end

  def profile
    render json: { player: PlayerSerializer.new(current_user) }, status: :accepted
  end

  def create
    @player = Player.find_or_create_by(player_params)
    if @user.valid?
      @token = encode_token(player_id: @player.id)
      render json: {player: PlayerSerializer.new(@player), jwt: @token}, status: :created
    else
      render json: {error: 'failed to create player'}, status: :not_acceptable
    end
  end

  private

  def player_params
    params.require(:player).permit(:team_player_id, :name, :height, :position, :experience_level, :description, :username, :password_digest)
  end
end
