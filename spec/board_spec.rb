require_relative '../lib/board'

describe 'A Tic Tac Toe board' do
	let(:full_board) {
    Board.new({
      top: {left: :fake, middle: :fake, right: :fake},
      middle: {left: :fake, middle: :fake, right: :fake},
      bottom: {left: :fake, middle: :fake, right: :fake}
    })
  }

  let(:midgame_board) {
    Board.new({
      top: {left: :o, middle: nil, right: nil},
      middle: {left: nil, middle: :x, right: nil},
      bottom: {left: nil, middle: nil, right: nil}
    })
  }

  it 'exists' do
    Board.new
  end

  it 'has locations' do
  	expect(Board.new).to respond_to(:locations)
  end

  it 'can be created with specific location values' do 
  	locations = {
      top: {left: :o, middle: nil, right: nil},
      middle: {left: nil, middle: :x, right: nil},
      bottom: {left: nil, middle: nil, right: nil}
    }
    board = Board.new(locations)
    expect(board.locations).to eq(locations)
  end

  it 'can place a token at a given location' do
  	board = Board.new
  	board.place(:x, :top, :left)
  	expect(board.locations[:top][:left]).to eq(:x)  
  end

end
