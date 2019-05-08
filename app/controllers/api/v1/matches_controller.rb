class Api::V1::MatchesController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index 
    @matches = Match.all
    render json: @matches
  end

  def create
    @match = Match.create(match_params)
    render json: @match
  end

  private

  def match_params
    params.require(:match).permit(:player_id, :player_match_id)
  end
end
