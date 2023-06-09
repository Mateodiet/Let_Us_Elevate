class UserDesignsController < ApplicationController
  def index
    @userdesigns = UserDesign.all
  end
end
