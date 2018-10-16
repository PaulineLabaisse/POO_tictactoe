require_relative 'boardcase.rb'


class Board
	attr_accessor :board

  	def initialize
		@cases = []
		for i in (1..9)
			@cases << BoardCase.new(i.to_s)
		end

  	#initialize

	def display_board
	 	puts " #{cases[0]} | #{cases[1]} | #{cases[2]} "
	 	puts " --------- "
	 	puts " #{cases[3]} | #{cases[4]} | #{cases[5]} "
	 	puts " --------- "
	 	puts " #{cases[6]} | #{cases[7]} | #{cases[8]} "
	end
	#display_board

	def play(move, result)
		cases[move - 1] = result
	end

 	def position_taken?(move)
    	if cases[move - 1].value == 'x' || @cases[move - 1].value == 'o'
      		true
    	else
      		false
    end
  end 

	def winning
		# Horizontal
		condition_1 = @cases[0] == @cases[1] && @cases[1] == @cases[2]
		condition_2 = @cases[3] == @cases[4] && @cases[4] == @cases[5]
		condition_3 = @cases[6] == @cases[7] && @cases[7] == @cases[8]

		# Vertical
		condition_4 = @cases[0] == @cases[3] && @cases[3] == @cases[6]
		condition_5 = @cases[1] == @cases[4] && @cases[4] == @cases[7]
		condition_6 = @cases[2] == @cases[5] && @cases[5] == @cases[8]		

		# Diagonal
		condition_7 = @cases[0] == @cases[4] && cases[4] == @cases[8]
		condition_8 = @cases[2] == @cases[4] && cases[4] == @cases[6]		

		if condition_1 || condition_2 || condition_3 || condition_4 || condition_5 || condition_6 || condition_7 || condition_8
			
		else
	
		end
	end
end

	
end
