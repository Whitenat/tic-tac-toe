require_relative 'board'

class Game
	attr_accessor :board

	def initialize(board = 'FAKE')
		@board = board
		@over = false
	end

	def over?
		return @over
	end
end
