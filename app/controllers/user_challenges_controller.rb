class UserChallengesController < ApplicationController
  def index
    @userchallenges = UserChallenge.all
  end

  def show
    @userchallenge = UserChallenge.find(params[:id])
  end

  def update
    @userchallenge = UserChallenge.find(params[:id])
    @userchallenge.update
    redirect_to userchallenge_path(@userchallenge)
  end
end
