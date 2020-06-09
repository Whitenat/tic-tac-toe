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

	def tie?
		if self.over?
			return true
		end
	end

	def winner
		# return board.token_at(:top, :left)
		if board.token_at(:top, :left) == :x
			if board.token_at(:top, :middle) == :x
				if board.token_at(:top, :right) == :x
					return :x
				end
			end
		elsif board.token_at(:top, :left) == :o
			if board.token_at(:top, :middle) == :o
				if board.token_at(:top, :right) == :o
					return :o
				end
			end
		else
			return nil
		end
	end
end
