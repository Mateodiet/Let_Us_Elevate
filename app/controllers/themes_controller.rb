class ThemesController < ApplicationController
  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(params[:theme])
    @theme.save
    redirect_to theme_path(@theme)
  end

  private

  def design_params
    params.require(:design).permit(:name, :stretgy, :authority, :non_soi)
  end
end
