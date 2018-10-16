#la class des joueurs

class Player
	attr_accessor :name, :symbol


  def initialize(name, symbol)
		@name = name
		@symbol = symbol
		
	end

	
	def to_s
	 	"#{@name_player}, #{@win_player}"
	 end

end