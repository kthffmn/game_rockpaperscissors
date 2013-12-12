#################################
### ROCK PAPER SCISSORS LOGIC ###
#################################

class Game
	attr_reader :user
	attr_accessor :computer, :image, :image_2
	RPS_ARRAY = ["scissors", "rock", "paper"]
 	def initialize(user)
		@user = user
		@image = "/images/#{user}.jpg"
	end

	def computer
		@computer ||= RPS_ARRAY.sample
	end

	def image_2
		@image_2 = "/images/#{computer}.jpg"
	end

	def winner
		winner = "?"
		if  self.user == "scissors" && self.computer == "rock" ||
			self.user == "rock" && self.computer == "paper" ||
			self.user == "paper" && self.computer == "scissors" 
			winner = "I win!"
		elsif self.user == self.computer
			winner = "no one wins."
		else
			winner = "you win!"
		end
		winner
	end
end