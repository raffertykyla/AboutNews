class Cms::ChaptersController < ApplicationController
  before_action :set_cms_chapter, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /cms/chapters
  # GET /cms/chapters.json
  def index
    @cms_chapters = Cms::Chapter.all
  end

  # GET /cms/chapters/1
  # GET /cms/chapters/1.json
  def show
  end

  # GET /cms/chapters/new
  def new
    @cms_chapter = Cms::Chapter.new
  end

  # GET /cms/chapters/1/edit
  def edit
  end

  # POST /cms/chapters
  # POST /cms/chapters.json
  def create
    @cms_chapter = Cms::Chapter.new(cms_chapter_params)

    respond_to do |format|
      if @cms_chapter.save
        format.html { redirect_to @cms_chapter, notice: 'Chapter was successfully created.' }
        format.json { render :show, status: :created, location: @cms_chapter }
      else
        format.html { render :new }
        format.json { render json: @cms_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/chapters/1
  # PATCH/PUT /cms/chapters/1.json
  def update
    respond_to do |format|
      if @cms_chapter.update(cms_chapter_params)
        format.html { redirect_to @cms_chapter, notice: 'Chapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_chapter }
      else
        format.html { render :edit }
        format.json { render json: @cms_chapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/chapters/1
  # DELETE /cms/chapters/1.json
  def destroy
    @cms_chapter.destroy
    respond_to do |format|
      format.html { redirect_to cms_chapters_url, notice: 'Chapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_chapter
      @cms_chapter = Cms::Chapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_chapter_params
      params.require(:cms_chapter).permit(:name, :code, :image, :overview, :president, :president_school, :president_email, :vice_pres, :vice_pres_school, :vice_pres_email, :treasurer, :treasurer_school, :treasurer_email, :secretary, :secretary_school, :secretary_email)
    end
end
