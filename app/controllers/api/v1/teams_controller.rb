class Api::V1::TeamsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index 
    @teams = Team.all
    render json: @teams
  end

  def create
    @team = Team.create(team_params)
    render json: @team
  end

  private

  def team_params
    params.require(:team).permit(:name, :location, :league)
  end
end
