# Helper Method
require "pry"

def position_taken?(board, index)
#  !(board[index].nil? || board[index] == " ")
  board[index] == "X" || board[index] == "O"
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #left diagonals
  [2,4,6], #right diagonals
  [0,3,6], #left columns
  [1,4,7], #middle column
  [2,5,8] #right column
]

def won?(board)
    WIN_COMBINATIONS.detect {|win_combination| board[win_combination[0]] == board[win_combination[1]] && board[win_combination[1]] == board[win_combination[2]] && position_taken?(board, win_combination[0])}
end





  #### if board(win_index).
  ####  ^load value of the board position X or O

#full?
#draw?
#over?
#winner
