require_relative 'main.rb'
require_relative 'player.rb'


class Board
	attr_accessor :board

  	def initialize
    	@board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    	#@board_case = board_case

  	end

  	#initialize

	def display_board
	 	puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
	 	puts " --------- "
	 	puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
	 	puts " --------- "
	 	puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
	end
	#display_board

	def play(move, result)
		@board[move - 1] = result
	end

 			 

	def winning
		# Horizontal
		condition_1 = @board[0] == @board[1] && @board[1] == @board[2]
		condition_2 = @board[3] == @board[4] && @board[4] == @board[5]
		condition_3 = @board[6] == @board[7] && @board[7] == @board[8]

		# Vertical
		condition_4 = @board[0] == @board[3] && @board[3] == @board[6]
		condition_5 = @board[1] == @board[4] && @board[4] == @board[7]
		condition_6 = @board[2] == @board[5] && @board[5] == @board[8]		

		# Diagonal
		condition_7 = @board[0] == @board[4] && @board[4] == @board[8]
		condition_8 = @board[2] == @board[4] && @board[4] == @board[6]		

		if condition_1 || condition_2 || condition_3 || condition_4 || condition_5 || condition_6 || condition_7 || condition_8
			puts "You win! Congrats"
		else
			puts "Try again!"
	
		end
	end
end


#binding.pry
	

