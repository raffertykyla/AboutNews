class Auth::AdminController < ApplicationController
  before_filter :authenticate_user!
  before_filter {authorize self}
  
  def index
  end
  
end


