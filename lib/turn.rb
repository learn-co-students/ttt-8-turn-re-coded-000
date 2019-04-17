def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,index)
  if index.to_i.between?(1,9) && !position_taken?(board,index.to_i-1)
 true
 else
   false
end
end
def position_taken? (board,index)
  taken = nil
if board[index] == " " || board[index] == "" || board[index] == nil
  taken = false
else
  taken = true
end# code your #position_taken? method here!
taken
end
def move (board,index,current_player = 'X')
  board[index.to_i - 1] = current_player
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
  move(board, input)
else
 turn(board)
 end
 display_board(board)
 end
