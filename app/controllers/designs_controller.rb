class DesignsController < ApplicationController
  def form
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.new(params[:design])
    @design.save
    redirect_to user_designs_path(@design)
  end

  private

  def design_params
    params.require(:design).permit(:name, :stretgy, :authority, :non_soi)
  end
end
