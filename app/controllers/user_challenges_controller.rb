class UserChallengesController < ApplicationController
  def index
    @userchallenges = UserChallenge.all
  end

  def show
    @userchallenge = UserChallenge.find(params[:id])
  end

  def edit
    @userchallenge = UserChallenge.find(params[:id])
  end

  def update
    @userchallenge = UserChallenge.find(params[:id])
    @userchallenge.update
    redirect_to userchallenge_path(@userchallenge)
  end

  private

  def userchallenge_params
    params.require(:userchallenge).permit(:challenge_id, :user_id, :status)
  end
end
