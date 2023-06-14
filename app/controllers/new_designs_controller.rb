require 'open-uri'
require 'json'

class NewDesignsController < ApplicationController

  def new_design

    url = "https://api.bodygraphchart.com/v221006/hd-data?api_key=#{ENV["API_KEY"]}&date=#{params[:year]}-#{params[:month]}-#{params[:day]}-#{params[:hour]}-#{params[:minutes]}"
      design = JSON.parse(URI.open("#{url}").read)


      strategy = design["Properties"]["Strategy"]["id"]
      type = design["Properties"]["Type"]["id"]
      authority = design["Properties"]["InnerAuthority"]["id"]
      notself = design["Properties"]["NotSelfTheme"]["id"]

    design_from_api = Design.new(name_type: type, strategy: strategy, authority: authority, notself: notself )

    if design_from_api.save

      redirect_to design_show_path(design_from_api)
    else
      render :form_without_design
    end
  end

    def form_without_design
      @design = Design.new
    end

end
