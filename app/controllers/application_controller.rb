class ApplicationController < ActionController::Base
  
  include Pundit
  rescue_from Pundit::NotAuthorizedError, :with => :user_not_authorized
  #before_filter :configure_devise_params, if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?


  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :init_controller
  layout :choose_layout

  def choose_layout
  	params[:controller].starts_with?("cms") || params[:controller].starts_with?("auth")  ? "application" : "application"
  end
  
  def init_controller
   @chapters = Cms::Chapter.all.order("name ASC")	  
   #@schools = Backstage::School.where("chapter_id = ?", @chapters.first.id)
  end
  
  def after_sign_in_path_for(resource)
  	request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end
  
  def user_not_authorized
	 flash[:alert] = "Access Denied"
	 redirect_to (request.referrer || root_path)  
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
  
  #def configure_devise_params
  #  devise_parameter_sanitizer.for(:account_update) do |u|
  #    u.permit(:first_name, :last_name, :password, :password_confirmation, :current_password, :email)
  #  end
  #  devise_parameter_sanitizer.for(:sign_up) do |u|
  #    u.permit(:first_name, :last_name, :password, :password_confirmation, :current_password, :email)
  #  end
  #end
  
end
