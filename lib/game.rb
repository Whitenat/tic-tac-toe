require_relative 'board'

class Game
	attr_accessor :board

	def initialize(board = 'FAKE')
		@board = board
	end
end
