class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.



  protect_from_forgery with: :exception
  before_action :set_user

  def after_sign_in_path_for(resource_name, resource)
  	edit_user_registration_path
  end
  def set_user
  	if current_user.nil?
  		@user = User.new
  	else
  		@user = current_user
  	end
  end



end
