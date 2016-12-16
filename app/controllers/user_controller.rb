 class UserController < ApplicationController

 	def index
 		if current_user.nil?
 			redirect_to welcome_path
 		else
 			redirect_to projects_path
 		end
 	end

 	def welcome

 	end

 	def show
 		@user=User.all
 	end
 	def user_ongoing
 		user=User.find(current_user.id)
 		@p = user.projects

  	end
 end
