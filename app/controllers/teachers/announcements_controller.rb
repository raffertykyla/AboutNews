class Teachers::AnnouncementsController < ApplicationController
  def index
	@news = Cms::Announcement.where(:target_audience => "Teachers")
  end
end
