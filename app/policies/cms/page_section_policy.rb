class Cms::PageSectionPolicy < ApplicationPolicy
 

  def index?
	isAdministrator?
  end	
  
  def show?
	isAdministrator?
  end
  
  def create?
	isAdministrator?
  end
  
  def new?
  	isAdministrator?
  end
  
  def update?
	isAdministrator?
  end
  
  def edit?
	isAdministrator?
  end
  
  def destroy?
	isAdministrator?
  end
  
  
end
