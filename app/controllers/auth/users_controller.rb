class Auth::UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter {authorize User}
  
  def index
	  @users = User.all
  end
    
  def update
	user = User.find(params[:id])
	user.roles = []
	user.roles << Cms::Role.find_by_title(params[:role])
	redirect_to "/auth/users/index"
  end
  
  def destroy
    User.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to "/auth/users/index", notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end
