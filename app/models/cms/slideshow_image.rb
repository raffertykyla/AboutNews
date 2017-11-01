class Cms::SlideshowImage < ActiveRecord::Base
	has_attached_file :image, :styles => { :slide => "2000x550" }
	validates_attachment :image, content_type: { content_type: ["image/jpeg","image/png", "image/jpg"] }
end
