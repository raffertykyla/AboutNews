class Cms::ChapterMeetingMinute < ActiveRecord::Base
	belongs_to :chapter
	has_attached_file :document
	validates_attachment :document, content_type: { content_type: ["application/pdf"] }
end
