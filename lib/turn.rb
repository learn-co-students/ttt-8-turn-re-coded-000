def display_board(board=[" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your #valid_move? method here
def valid_move?(board,position)
  if position.to_i.between?(1,9) && !position_taken?(board,position.to_i-1)
    true
  else
    end
end
#re-define your position_taken? method here, so that you can use it in the valid_move? method above.
# code your #posotion_taken? method here
def position_taken?(board,position)

 if board[position]== "" || board[position]== " " || board[position]== nil
  return false
 elsif board[position]=="X" || board[position]=="O"
   return true
  end
end
def input_to_index(position)
  position.to_i-1
end
def move(board,position,value="X")
  index=input_to_index(position)
  board[index]=value
end
def turn(board)
  puts "Please enter 1-9:"
  position=gets.strip
  if valid_move?(board,position)
    move(board,position)
    display_board(board)
  else
    turn(board)
  end
end
