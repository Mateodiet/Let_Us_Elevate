class UserDesignsController < ApplicationController


  def show
    @user_design = UserDesign.find(params[:id])
  end


end
