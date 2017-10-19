class Cms::PagePolicy < ApplicationPolicy
 

  def index?
	isSiteManager?
  end	
  
  def show?
	isSiteManager?
  end
  
  def create?
	isSiteManager?
  end
  
  def new?
  	isSiteManager?
  end
  
  def add_content?
	isSiteManager?
  end
  
  def update_content?
	isSiteManager?
  end
  
  def update?
	isSiteManager?
  end
  
  def edit?
	isSiteManager?
  end
  
  def destroy?
	isSiteManager?
  end
  
  
end
