class UserPolicy < ApplicationPolicy
  
  def index?
	isAdministrator?
  end
  
  def new?
	true #isAdministrator?
  end	
  
  def edit?
	true 
  end
  
  def create?
	true #isAdministrator? 
  end
  
  def update?
	true
  end
  
  def destroy?
  	isAdministrator?
  end
    
end
