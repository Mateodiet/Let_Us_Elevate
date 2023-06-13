require 'open-uri'
require 'json'

class DesignsController < ApplicationController
  def form
  end

  def scrap
    current_user.update(username: params[:name], city: params[:city])

# if params date n'est pas présent, j'en met un par default pour pas faire planter l'url


    url = "https://api.bodygraphchart.com/v221006/hd-data?api_key=#{ENV["API_KEY"]}&date=#{params[:year]}-#{params[:month]}-#{params[:day]}-#{params[:hour]}-#{params[:minutes]}"
# heure par default
    design = JSON.parse(URI.open("#{url}").read)

# je vais chercher l'ID à chaque fois sur chaque hash (exemple: strategie, propriete, innerautority)(https://bodygraphchart.com/docs/)

    strategy = design["Properties"]["Strategy"]["id"]
    type = design["Properties"]["Type"]["id"]
    authority = design["Properties"]["InnerAuthority"]["id"]
    notself = design["Properties"]["NotSelfTheme"]["id"]

    design_from_api = Design.create(name_type: type, strategy: strategy, authority: authority, notself: notself )

    user_design = UserDesign.new(design_id: design_from_api.id, user_id: current_user.id)
    user_design.save

    redirect_to user_design_path(user_design.id)
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
