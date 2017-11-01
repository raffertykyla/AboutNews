class Cms::SchoolsController < ApplicationController
  before_action :set_cms_school, only: [:show, :edit, :update, :destroy]

  # GET /cms/schools
  # GET /cms/schools.json
  def index
    @cms_schools = Cms::School.all
  end

  # GET /cms/schools/1
  # GET /cms/schools/1.json
  def show
  end

  # GET /cms/schools/new
  def new
    @cms_school = Cms::School.new
  end

  # GET /cms/schools/1/edit
  def edit
  end

  # POST /cms/schools
  # POST /cms/schools.json
  def create
    @cms_school = Cms::School.new(cms_school_params)

    respond_to do |format|
      if @cms_school.save
        format.html { redirect_to @cms_school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @cms_school }
      else
        format.html { render :new }
        format.json { render json: @cms_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/schools/1
  # PATCH/PUT /cms/schools/1.json
  def update
    respond_to do |format|
      if @cms_school.update(cms_school_params)
        format.html { redirect_to @cms_school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_school }
      else
        format.html { render :edit }
        format.json { render json: @cms_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/schools/1
  # DELETE /cms/schools/1.json
  def destroy
    @cms_school.destroy
    respond_to do |format|
      format.html { redirect_to cms_schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_school
      @cms_school = Cms::School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_school_params
      params.require(:cms_school).permit(:chapter_id, :name, :code, :website, :representative, :rep_email)
    end
end
