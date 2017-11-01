class AwardsController < ApplicationController
  def index
	@awards = Cms::Award.all
  end
	
end
