class Cms::Convention < ActiveRecord::Base

	has_and_belongs_to_many :attachments,  :join_table => 'attachments_conventions'
	accepts_nested_attributes_for :attachments, :reject_if => lambda { |a| a[:document].blank? }, :allow_destroy => true
	attr_accessor :attachment_attributes
	
	has_attached_file :image, styles: { small: "64x64", large: "600x600" }
	validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
    validates :email, presence: true, format: Devise.email_regexp
    validates :phone, presence:true, format: { with: /\d{3}-\d{3}-\d{4}/, message: "is invalid" }
    validates :fax, presence:true, format: { with: /\d{3}-\d{3}-\d{4}/, message: "is invalid" }
	validates :year, presence:true
	validates :theme, presence:true
	validates :what, presence:true
	validates :where, presence:true
	validates :when, presence:true
	validates :address, presence:true
	validates :theme, presence:true
	validates :city, presence:true
	validates :zip_code, presence:true
	validates :theme, presence:true

end