class Cms::Affiliation < ApplicationRecord
	has_attached_file :image, :styles => { :thumb => "100x100#", :small => "400x400", :medium => "800x800" }
	validates_attachment :image, content_type: { content_type: ["image/jpeg","image/png", "image/jpg"] }
end
