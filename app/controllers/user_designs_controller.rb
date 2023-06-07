class UserDesignsController < ApplicationController
  def show
    @userdesign = UserDesign.find(params[:id])
  end

  def new
  end
end
