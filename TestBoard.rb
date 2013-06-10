require 'test/unit'
require_relative 'board.rb'

class TestBoard < Test::Unit::TestCase


def test_board_is_created
	assert_equal "\n  1 | 2 | 3\n  ---------\n  4 | 5 | 6\n  ---------\n  7 | 8 | 9\n", Board.new.draw_board
end

def test_rows
	assert_equal ["123", "456", "789"], Board.new.rows	
end

def test_columns
	assert_equal ["147", "258", "369"], Board.new.columns
end

def test_diagonals
	assert_equal ["159", "357"], Board.new.diagonals 
end

end
