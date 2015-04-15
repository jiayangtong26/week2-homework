class GreetController < ApplicationController
   	def hello
		#render "hello"
		if params["salutation"]
			@greeting = params["salutation"]
		else
			@greeting = "Hello"
		end
   	end
end
