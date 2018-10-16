require_relative 'player.rb'

	


class Game
	attr_accessor :players, :board
	
	def initialize
		puts "Hello, ecris ton nom : "
			player_name_1 = gets.chomp
			player1 = Player.new(@player_name_1, 'x')

		puts "Ensuite ecris le nom de ton adversaire : "
			player_name_2 = gets.chomp
			player2 = Player.new(@player_name_2, 'x')

			@players = [player_name_1, player_name_2]
			@board = Board.new
	end

	def start_game
		9.times do |turn|
			if @board.winning == 0
  			turns(turn)
			else
        		if @board.winning == 1 
          			puts "#{@players[0].name} is the "
          			puts "Winner !"
        		else 
          			puts "#{@players[1]} is the "
          			puts "Winner !"
       		end
    		break
      end
    end
    	if @board.winning == 0
    		puts "It's a tie... Try again. "
    	end
	end

  def turns(i)
  	system('clear')
  	@board.display_board
  	a = i % 2
  	puts "#{@players[a].name}, which slot do you want to play (between 1 and 9) ?"
    move = gets.chomp.to_i
  
#impossible d'afficher le tableu et de montrer les remplacement de symboles
#pas de solution pour trouver cette methode

  	@board.play(move, @players[a].symbol)
    @board.display_board
	end
end



 