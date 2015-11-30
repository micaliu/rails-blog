class UserController < ApplicationController
	before_action :authenticate_user!
	
	def sign_in
	    # default_params.permit(:username, :email)
	end
end
