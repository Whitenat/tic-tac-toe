require_relative 'board'

class Game
	attr_accessor :board

	def initialize(board = Board.new())
		@board = board
	end

	def over?
		if @board.full?
			return true
		else
			return false
		end
	end
end
