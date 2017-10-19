class Cms::SlideshowImagesController < ApplicationController
  before_action :set_cms_slideshow_image, only: [:show, :edit, :update, :destroy]

  # GET /cms/slideshow_images
  # GET /cms/slideshow_images.json
  def index
    @cms_slideshow_images = Cms::SlideshowImage.all
  end

  # GET /cms/slideshow_images/1
  # GET /cms/slideshow_images/1.json
  def show
  end

  # GET /cms/slideshow_images/new
  def new
    @cms_slideshow_image = Cms::SlideshowImage.new
  end

  # GET /cms/slideshow_images/1/edit
  def edit
  end

  # POST /cms/slideshow_images
  # POST /cms/slideshow_images.json
  def create
    @cms_slideshow_image = Cms::SlideshowImage.new(cms_slideshow_image_params)

    respond_to do |format|
      if @cms_slideshow_image.save
        format.html { redirect_to @cms_slideshow_image, notice: 'Slideshow image was successfully created.' }
        format.json { render :show, status: :created, location: @cms_slideshow_image }
      else
        format.html { render :new }
        format.json { render json: @cms_slideshow_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/slideshow_images/1
  # PATCH/PUT /cms/slideshow_images/1.json
  def update
    respond_to do |format|
      if @cms_slideshow_image.update(cms_slideshow_image_params)
        format.html { redirect_to @cms_slideshow_image, notice: 'Slideshow image was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_slideshow_image }
      else
        format.html { render :edit }
        format.json { render json: @cms_slideshow_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/slideshow_images/1
  # DELETE /cms/slideshow_images/1.json
  def destroy
    @cms_slideshow_image.destroy
    respond_to do |format|
      format.html { redirect_to cms_slideshow_images_url, notice: 'Slideshow image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_slideshow_image
      @cms_slideshow_image = Cms::SlideshowImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_slideshow_image_params
      params.require(:cms_slideshow_image).permit(:image, :destination)
    end
end
