def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your #valid_move? method here
def valid_move?(board,position)
if position.to_i.between?(1,9) && !position_taken?(board,position.to_i-1)
  return true
  els false
end
end

def position_taken?(board,position)
  if board[position]==" " || board[position]=="" || board[position]==nil
    return false
  else board[position]=="X" || board[position]=="O"
    return true
  end
end
def move(board,index,value ="X")
  index = index.to_i
  index = index - 1
  board[index]= value
end

# code your move method here!
def turn(board)
  puts "Please enter 1-9:"
  position=gets.strip
  if valid_move?(board,position)
    move(board, position)
    display_board(board)
  else
      turn(board)

end
end
