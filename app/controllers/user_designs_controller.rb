class UserDesignsController < ApplicationController
  def index
    @userdesigns = UserDesign.all
  end

  def show
    @user_design = UserDesign.find(params[:id])

  end
end
