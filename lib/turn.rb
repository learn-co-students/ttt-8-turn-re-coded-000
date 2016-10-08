def turn(board)

puts "Please enter 1-9:"
inp = gets.chomp
input_to_index(inp)
valid =valid_move?(board,inp)

while (valid == false)
  puts "Please enter 1-9:"
  inp = gets.chomp
  valid =valid_move?(board,inp)
  #input_to_index(inp)
 #valid_move?(board,inp)

end
  move(board, inp.to_i, "X")
  display_board(board)

#loop do
#  puts "Please enter 1-9:"
#  inp = gets.chomp
#  input_to_index(inp)
#    if (valid = valid_move?(board,inp))
#      move(board, inp.to_i, "X")
#      display_board(board)
#      break
#    end
#end

end


# code your #valid_move? method here
def valid_move?(board, inp)
  inp = inp.to_i
  #position = position - 1
  if ((position_taken?(board,inp) && inp.between?(0,8)))
    true
  else
    false
  end
end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,inp)
  if ((board[inp] == "") || (board[inp] == " "))
    true
  elsif ((board[inp] == "X") || (board[inp] == "O"))
    false
  end
end

# code your move method here!
def move (board, inp, player ="X")
  board[inp - 1] = player
  return board
end

def input_to_index(inp)
  return (inp.to_i - 1)
end
