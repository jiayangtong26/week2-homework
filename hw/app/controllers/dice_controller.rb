class DiceController < ApplicationController
	
	def play
		render "homepage"
	end

	def roll
		@numbers = [1,2,3,4,5,6].sample(2)
		sum = @numbers[0] + @numbers[1]
		@goal = params["goal"]
		if @goal
			if sum == 7
				@result = 1
			elsif sum == (@goal.to_i)
				@result = 0
			else
				@result = 2
			end
		else
			if (sum == 7) or (sum == 11)
				@result = 0
			elsif (sum == 2) or (sum == 3) or (sum == 12)
				@result = 1
			else
				@goal = sum
				@result = 2
			end
		end
		render "roll"
	end

end
