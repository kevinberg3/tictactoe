require 'test/unit'
require_relative 'tic_tac_toe.rb'

class TestTictactoe < Test::Unit::TestCase

def setup
	@tic_tac_toe = TicTacToe.new
end 

def test_player_one_selection_and_board_mark
	@tic_tac_toe.mark_space(2) 
	assert_equal @tic_tac_toe.board.rows[0][1], "x"
end

def test_player_two_selection_and_board_mark
	@tic_tac_toe.players_1_turn = false
	@tic_tac_toe.mark_space(2) 
	assert_equal @tic_tac_toe.board.rows[0][1], "o"
end

def test_player_win
	@tic_tac_toe.board.board[0] = ["x", "x", "x"]
	assert_equal true, @tic_tac_toe.did_mark_win?("x")
end

def test_if_players_tie
	@tic_tac_toe.board = [["o", "x", "o"]["x", "o", "x"]["x", "o", "x"]]
	assert_equal true, @tic_tac_toe.board.tied?
end


end
