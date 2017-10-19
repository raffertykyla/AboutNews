class Cms::PageSection < ActiveRecord::Base
	belongs_to :page
	has_attached_file :photo, :styles => { :thumb => "100x100#", :small => "400x400", :medium => "800x800" }
	validates_attachment :photo, content_type: { content_type: ["image/jpeg","image/png", "image/jpg"] }
end
