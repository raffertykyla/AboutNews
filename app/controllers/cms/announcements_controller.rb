class Cms::AnnouncementsController < ApplicationController
  before_action :set_cms_announcement, only: [:show, :edit, :update, :destroy]

  # GET /cms/announcements
  # GET /cms/announcements.json
  def index
    @cms_announcements = Cms::Announcement.all
  end

  # GET /cms/announcements/1
  # GET /cms/announcements/1.json
  def show
  end

  # GET /cms/announcements/new
  def new
    @cms_announcement = Cms::Announcement.new
  end

  # GET /cms/announcements/1/edit
  def edit
  end

  # POST /cms/announcements
  # POST /cms/announcements.json
  def create
    @cms_announcement = Cms::Announcement.new(cms_announcement_params)

    respond_to do |format|
      if @cms_announcement.save
        format.html { redirect_to @cms_announcement, notice: 'Announcement was successfully created.' }
        format.json { render :show, status: :created, location: @cms_announcement }
      else
        format.html { render :new }
        format.json { render json: @cms_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/announcements/1
  # PATCH/PUT /cms/announcements/1.json
  def update
    respond_to do |format|
      if @cms_announcement.update(cms_announcement_params)
        format.html { redirect_to @cms_announcement, notice: 'Announcement was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_announcement }
      else
        format.html { render :edit }
        format.json { render json: @cms_announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/announcements/1
  # DELETE /cms/announcements/1.json
  def destroy
    @cms_announcement.destroy
    respond_to do |format|
      format.html { redirect_to cms_announcements_url, notice: 'Announcement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_announcement
      @cms_announcement = Cms::Announcement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_announcement_params
      params.require(:cms_announcement).permit(:title, :target_audience, :description)
    end
end
