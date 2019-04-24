class Api::V1::TeamsController < ApplicationController

  def index 
    @teams = Team.all
    render json: @teams
  end

  def create
    @team = Team.find_or_create_by(team_params)
  end

  private

  def team_params do 
    params.require(:team).permit(:name, :location, :league)
  end
end
