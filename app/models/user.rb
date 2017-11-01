class User < ActiveRecord::Base
  before_create :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :roles, :join_table => :roles_users, :class_name => "Cms::Role"
  #validates_presence_of :first_name, :last_name
  
  def has_role(role)
	roles.include?(Cms::Role.find_by_title(role))	  
  end
  
  def active_for_authentication?
  	super && !isLocked?
  end
  
  def isLocked?
	 self.roles.each do |role|
		return true if role.title == "Locked" 
	 end
	 return false 
  end

  def inactive_message
  	"Sorry, this account is locked."
  end
  

  private
  
  def set_default_role
    self.roles << Cms::Role.find_by_title("Pending")
  end
  
end
