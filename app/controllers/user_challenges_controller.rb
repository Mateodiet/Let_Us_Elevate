class UserChallengesController < ApplicationController
  def index
    @userchallenges = UserChallenge.all
  end

  def show
    @userchallenge = UserChallenge.find(params[:id])
  end

  def status
    @userchallenge = UserChallenge.find(params[:id])
    if params[:status].present? && UserChallenge::STATUSES.include?(params[:status].to_sym)
      @userchallenge.update(status: params[:status])
    end
    redirect_to user_challenge_path(@userchallenge)
  end
end
