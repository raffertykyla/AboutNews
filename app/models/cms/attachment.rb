class Cms::Attachment < ActiveRecord::Base
	has_and_belongs_to_many :conventions,  :join_table => 'attachments_conventions'
	has_attached_file :document
	validates_attachment :document, content_type: { content_type: ["application/pdf"] }
end
