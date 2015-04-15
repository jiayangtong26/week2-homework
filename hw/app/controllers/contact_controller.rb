class ContactController < ApplicationController
	
	def fill
		render "fill"
	end
	
	def view
		@first_name = params["first_name"]
		@last_name = params["last_name"]
	end
end
