class UsersController < ApplicationController

  def edit
    @user = current_user
  end

  def update
    raise
  end
end
