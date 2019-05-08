class Api::V1::PotentialMatchesController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index 
    @potential_matches = PotentialMatch.all
    render json: @potential_matches
  end

  def create
    @potential_match = PotentialMatch.create(potential_match_params)
    render json: @potential_match
  end

  private

  def potential_match_params
    params.require(:potential_match).permit(:player_id, :player_match_id)
  end
end
