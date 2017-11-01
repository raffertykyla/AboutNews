class Cms::ChapterMeetingMinutesController < ApplicationController
  before_action :set_cms_chapter_meeting_minute, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /cms/chapter_meeting_minutes
  # GET /cms/chapter_meeting_minutes.json
  def index
    @cms_chapter_meeting_minutes = Cms::ChapterMeetingMinute.all
  end

  # GET /cms/chapter_meeting_minutes/1
  # GET /cms/chapter_meeting_minutes/1.json
  def show
  end

  # GET /cms/chapter_meeting_minutes/new
  def new
    @cms_chapter_meeting_minute = Cms::ChapterMeetingMinute.new
  end

  # GET /cms/chapter_meeting_minutes/1/edit
  def edit
  end

  # POST /cms/chapter_meeting_minutes
  # POST /cms/chapter_meeting_minutes.json
  def create
    @cms_chapter_meeting_minute = Cms::ChapterMeetingMinute.new(cms_chapter_meeting_minute_params)

    respond_to do |format|
      if @cms_chapter_meeting_minute.save
        format.html { redirect_to @cms_chapter_meeting_minute, notice: 'Chapter meeting minute was successfully created.' }
        format.json { render :show, status: :created, location: @cms_chapter_meeting_minute }
      else
        format.html { render :new }
        format.json { render json: @cms_chapter_meeting_minute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/chapter_meeting_minutes/1
  # PATCH/PUT /cms/chapter_meeting_minutes/1.json
  def update
    respond_to do |format|
      if @cms_chapter_meeting_minute.update(cms_chapter_meeting_minute_params)
        format.html { redirect_to @cms_chapter_meeting_minute, notice: 'Chapter meeting minute was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_chapter_meeting_minute }
      else
        format.html { render :edit }
        format.json { render json: @cms_chapter_meeting_minute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/chapter_meeting_minutes/1
  # DELETE /cms/chapter_meeting_minutes/1.json
  def destroy
    @cms_chapter_meeting_minute.destroy
    respond_to do |format|
      format.html { redirect_to cms_chapter_meeting_minutes_url, notice: 'Chapter meeting minute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_chapter_meeting_minute
      @cms_chapter_meeting_minute = Cms::ChapterMeetingMinute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_chapter_meeting_minute_params
      params.require(:cms_chapter_meeting_minute).permit(:title, :meeting_date, :document, :chapter_id)
    end
end
