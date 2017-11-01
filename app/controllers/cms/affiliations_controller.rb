class Cms::AffiliationsController < ApplicationController
  before_action :set_cms_affiliation, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /cms/affiliations
  # GET /cms/affiliations.json
  def index
    @cms_affiliations = Cms::Affiliation.all
  end

  # GET /cms/affiliations/1
  # GET /cms/affiliations/1.json
  def show
  end

  # GET /cms/affiliations/new
  def new
    @cms_affiliation = Cms::Affiliation.new
  end

  # GET /cms/affiliations/1/edit
  def edit
  end

  # POST /cms/affiliations
  # POST /cms/affiliations.json
  def create
    @cms_affiliation = Cms::Affiliation.new(cms_affiliation_params)

    respond_to do |format|
      if @cms_affiliation.save
        format.html { redirect_to @cms_affiliation, notice: 'Affiliation was successfully created.' }
        format.json { render :show, status: :created, location: @cms_affiliation }
      else
        format.html { render :new }
        format.json { render json: @cms_affiliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/affiliations/1
  # PATCH/PUT /cms/affiliations/1.json
  def update
    respond_to do |format|
      if @cms_affiliation.update(cms_affiliation_params)
        format.html { redirect_to @cms_affiliation, notice: 'Affiliation was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_affiliation }
      else
        format.html { render :edit }
        format.json { render json: @cms_affiliation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/affiliations/1
  # DELETE /cms/affiliations/1.json
  def destroy
    @cms_affiliation.destroy
    respond_to do |format|
      format.html { redirect_to cms_affiliations_url, notice: 'Affiliation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_affiliation
      @cms_affiliation = Cms::Affiliation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_affiliation_params
      params.require(:cms_affiliation).permit(:url, :image)
    end
end
