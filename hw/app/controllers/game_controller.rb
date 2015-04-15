class GameController < ApplicationController
	
	def play
		render "play"
	end
	
	def judge
		weapons = ["Rock", "Paper", "Scissors"]
		results = ["The Winner is You!", "Sorry, you lose...", "It's a TIE!"]
		user = params["choice"].to_i
		computer = [0, 1, 2].sample(1)[0]
		@user_choice = weapons[user]
		@computer_choice = weapons[computer]
		if user == computer
			@result = results[2]
		elsif ((user == 1) and (computer == 0)) or
			((user == 2) and (computer == 1)) or
			((user == 0) and (computer == 2))
			@result = results[0]
		else
			@result = results[1]
		end
		render "judge"
	end

end
