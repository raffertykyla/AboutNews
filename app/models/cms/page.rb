class Cms::Page < ActiveRecord::Base
	
	extend FriendlyId
	
	has_many :page_sections, :dependent => :destroy
	accepts_nested_attributes_for :page_sections, :reject_if => lambda { |a| a[:body].blank? && a[:photo].blank? }, :allow_destroy => true
	attr_accessor :page_section_attributes
	
	has_attached_file :document
	
	validates_attachment :document, content_type: { content_type: ["application/pdf"] }
	validates_uniqueness_of :title
	
    friendly_id :title, use: :slugged
    
    
end
