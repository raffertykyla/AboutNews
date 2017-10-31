class Cms::AwardsController < ApplicationController
  before_action :set_cms_award, only: [:show, :edit, :update, :destroy]

  # GET /cms/awards
  # GET /cms/awards.json
  def index
    @cms_awards = Cms::Award.all
  end

  # GET /cms/awards/1
  # GET /cms/awards/1.json
  def show
  end

  # GET /cms/awards/new
  def new
    @cms_award = Cms::Award.new
  end

  # GET /cms/awards/1/edit
  def edit
  end

  # POST /cms/awards
  # POST /cms/awards.json
  def create
    @cms_award = Cms::Award.new(cms_award_params)

    respond_to do |format|
      if @cms_award.save
        format.html { redirect_to @cms_award, notice: 'Award was successfully created.' }
        format.json { render :show, status: :created, location: @cms_award }
      else
        format.html { render :new }
        format.json { render json: @cms_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/awards/1
  # PATCH/PUT /cms/awards/1.json
  def update
    respond_to do |format|
      if @cms_award.update(cms_award_params)
        format.html { redirect_to @cms_award, notice: 'Award was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_award }
      else
        format.html { render :edit }
        format.json { render json: @cms_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/awards/1
  # DELETE /cms/awards/1.json
  def destroy
    @cms_award.destroy
    respond_to do |format|
      format.html { redirect_to cms_awards_url, notice: 'Award was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_award
      @cms_award = Cms::Award.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_award_params
      params.require(:cms_award).permit(:title, :description, :document)
    end
end
