require_relative 'main.rb'
require_relative 'board.rb'


class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
	attr_accessor :name, :symbol


  def initialize(name, symbol)
		@name = name
		@symbol = symbol
		
	end

	
	# def to_s
	# 	"#{@name_player}, #{@win_player}"
	# end

end