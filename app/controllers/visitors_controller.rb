class VisitorsController < ApplicationController
	before_action :check_sign
	def check_sign
		if current_user
			redirect_to '/home'
		end
	end
end
