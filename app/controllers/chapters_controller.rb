class ChaptersController < ApplicationController

  def show
	  @chapter = Cms::Chapter.find(params[:id])
  end
  
  def meeting_minutes
	 @meeting_minutes = Cms::ChapterMeetingMinute.find(params[:id]) 
  end

end
