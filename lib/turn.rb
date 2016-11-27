def turn(board)
  valid = false
  while !valid
    puts "Please enter 1-9:"
    input = gets.strip
    valid = valid_move?(board, input)
  end
  move(board, input_to_position(input))
  display_board(board)
end

def valid_move?(board, position)
  idx = position.to_i - 1
  (idx >= 0 && idx < 9 && !position_taken?(board, idx))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, idx)
  (board[idx] == 'X' || board[idx] == 'Y')
end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  #board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_position(move)
  move.to_i
end

def move(board, position, move = 'X')
  index = position -1
  board[index] = move
  board
end
