class Cms::ConventionsController < ApplicationController
  before_action :set_cms_convention, only: [:show, :edit, :update, :destroy]

  # GET /cms/conventions
  # GET /cms/conventions.json
  def index
    @cms_conventions = Cms::Convention.all
  end

  # GET /cms/conventions/1
  # GET /cms/conventions/1.json
  def show
  end

  # GET /cms/conventions/new
  def new
    @cms_convention = Cms::Convention.new
  end

  # GET /cms/conventions/1/edit
  def edit
  end

  # POST /cms/conventions
  # POST /cms/conventions.json
  def create
    @cms_convention = Cms::Convention.new(cms_convention_params)

    respond_to do |format|
      if @cms_convention.save
        format.html { redirect_to @cms_convention, notice: 'Convention was successfully created.' }
        format.json { render :show, status: :created, location: @cms_convention }
      else
        format.html { render :new }
        format.json { render json: @cms_convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/conventions/1
  # PATCH/PUT /cms/conventions/1.json
  def update
    respond_to do |format|
      if @cms_convention.update(cms_convention_params)
        format.html { redirect_to @cms_convention, notice: 'Convention was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_convention }
      else
        format.html { render :edit }
        format.json { render json: @cms_convention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/conventions/1
  # DELETE /cms/conventions/1.json
  def destroy
    @cms_convention.destroy
    respond_to do |format|
      format.html { redirect_to cms_conventions_url, notice: 'Convention was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_convention
      @cms_convention = Cms::Convention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_convention_params
      params.require(:cms_convention).permit(:year, :theme, :image, :what, :when, :where, :address, :city, :state, :zip_code, :phone, :fax, :email, attachments_attributes: [ :id, :title, :document, :_destroy ])
    end
end
