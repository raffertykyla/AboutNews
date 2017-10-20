class NewsController < ApplicationController

  def index
   @news = Cms::Announcement.where(:target_audience => "All")
  end

end

