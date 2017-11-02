class PagesController < ApplicationController

  def home
	  @chapters = Cms::Chapter.all
	  @affiliations = Cms::Affiliation.all
	  @banner = Cms::SlideshowImage.last
  end

  def show
	@page = Cms::Page.friendly.find(params[:id])
	if @page.page_type == "Document"
		render "document"
	elsif @page.page_type == "Template"
		if @page.page_template_id == 0
			render "one-col-vertical"  
		elsif @page.page_template_id == 1
			render "one-col-horizontal" 
		elsif @page.page_template_id == 2
			render "two-col-vertical" 
		elsif @page.page_template_id == 3
			render "two-col-horizontal" 
		end
	end
  end

  def contact
  end
  
end
