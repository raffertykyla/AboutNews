class Cms::PageSectionsController < ApplicationController
  before_action :set_cms_page_section, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /cms/page_sections
  # GET /cms/page_sections.json
  def index
    @cms_page_sections = Cms::PageSection.all
  end

  # GET /cms/page_sections/1
  # GET /cms/page_sections/1.json
  def show
  end

  # GET /cms/page_sections/new
  def new
    @cms_page_section = Cms::PageSection.new
    @cms_page_section.page_id = params[:page_id]
  end

  # GET /cms/page_sections/1/edit
  def edit
  end

  # POST /cms/page_sections
  # POST /cms/page_sections.json
  def create
    @cms_page_section = Cms::PageSection.new(cms_page_section_params)

    respond_to do |format|
      if @cms_page_section.save
        format.html { redirect_to :controller => "/pages", :action => "show", :id => @cms_page_section.page_id, notice: 'Page section was successfully created.' }
        format.json { render :show, status: :created, location: @cms_page_section }
      else
        format.html { render :new }
        format.json { render json: @cms_page_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/page_sections/1
  # PATCH/PUT /cms/page_sections/1.json
  def update
    respond_to do |format|
      if @cms_page_section.update(cms_page_section_params)
        format.html { redirect_to @cms_page_section, notice: 'Page section was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_page_section }
      else
        format.html { render :edit }
        format.json { render json: @cms_page_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/page_sections/1
  # DELETE /cms/page_sections/1.json
  def destroy
    @cms_page_section.destroy
    respond_to do |format|
      format.html { redirect_to cms_page_sections_url, notice: 'Page section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_page_section
      @cms_page_section = Cms::PageSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_page_section_params
      params.require(:cms_page_section).permit(:page_id, :photo, :body, :position, :alignment)
    end
end
