class PagesController < ApplicationController

  def home
  end

  def contact
  end

  def about
  end

  def help
  end

  
  def grn
   @grn_po = GrnPo.find(params[:id])

    respond_to do |format|
      format.html { render :layout => nil} # grn.html.erb
      format.json { render :json => @grn_po }
    end


  end
  
  def create_grn_pdf
  source_url = pages_grn_url(:id => params[:id])
  output_pdf = "GRN_#{Time.now.to_i}.pdf"
  destination = "#{::Rails.root.to_s}/public/pdfs/#{output_pdf}"
  command_line = %Q{wkhtmltopdf --print-media-type "#{source_url}" #{destination}}

  # Execute wkhtmltopdf
  `#{command_line}`

  redirect_to "/pdfs/#{output_pdf}"
  end

end
