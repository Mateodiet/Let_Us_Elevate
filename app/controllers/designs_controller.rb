class DesignsController < ApplicationController
  def show
    @design = Design.find(params[:id])
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.new(params[:design])
    @design.save
    redirect_to design_path(@design)
  end

  private

  def design_params
    params.require(:design).permit(:name, :stretgy, :authority, :non_soi)
  end

  def destroy
    @design = Design.find(params[:id])
    @design.destroy
    redirect_to design_path, status: :see_other
  end
end
