class Cms::Role < ActiveRecord::Base
	has_and_belongs_to_many :users, :join_table => :roles_users, :class_name => "User"
	
end
