class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @player = Player.find_by(username: player_login_params[:username])
    if @player && @player.authenticate(player_login_params[:password])
      token = encode_token({player_id: @player.id})
      render json: {player: Api::V1::PlayerSerializer.new(@player), jwt:token}, status: :accepted
    else
      render json: {message: 'Invalid username or password'}, status: :unauthorized
    end
  end

  private

  def player_login_params
    params.require(:player).permit(:username, :password)
  end
end
