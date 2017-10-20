class NewsController < ApplicationController

  def index
   @news = Cms::Announcement.where(:target_audience => "all")
  end

end
