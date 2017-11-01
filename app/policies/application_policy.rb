class ApplicationPolicy
  attr_reader :current_user, :model
  
  def initialize(current_user, model)
    @user = current_user
    @model = model
  end

  def isAdministrator?
  	@user && @user.has_role("Administrator")  	
  end
  
  def isSiteManager?
	isAdministrator? || (@user && @user.has_role("Site Manager"))
  end
  
  def isAuthenticated?
	isSiteManager? || (@user && @user.has_role("Authenticated"))
  end
  
end
