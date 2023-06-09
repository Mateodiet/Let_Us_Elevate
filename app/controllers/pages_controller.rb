class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def information_1
  end

  def information_2
  end

  def information_3
  end
end
