class Cms::Convention < ActiveRecord::Base
	has_and_belongs_to_many :attachments,  :join_table => 'attachments_conventions'
	accepts_nested_attributes_for :attachments, :reject_if => lambda { |a| a[:document].blank? }, :allow_destroy => true
	attr_accessor :attachment_attributes
	
	has_attached_file :image, styles: { small: "64x64", large: "600x600" }
	validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end