class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def update
    @challenge = Challenge.find(params[:id])
    @challenge.update
    redirect_to challenge_path(@challenge)
  end

  private

  def challenge_params
    params.require(:challenge).permit(:description, :title, :theme_id)
  end
end
