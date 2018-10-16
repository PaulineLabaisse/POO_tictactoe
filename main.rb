require_relative 'player.rb'
require_relative 'board.rb'



#class Game
#	attr_accessor :player_name_1, :player_name_2, :board
	
	def initialize
		puts "Hello, ecris ton nom : "
			player_name_1 = gets.chomp
			@player1 = Player.new(player_name_1, 'x')

		puts "Ensuite ecris le nom de ton adversaire : "
			player_name_2 = gets.chomp
			@player2 = Player.new(player_name_2, 'o')

		@board = Board.new
	end

	def start
		i = 0
		while i <= 9
		puts "Joueur numero 1, choisis une case :"
			@choice1 = gets.chomp
			@board.play(@choice1)
			@board.display_board

		puts "Joueur numero 2, à ton tour, choisis une case :"
			@choice2 = gets.chomp.to_i
			@board.play(@choice2, @player2.symbol)
			@board.display_board

		i +=1
		end
	end

	

	initialize
	start