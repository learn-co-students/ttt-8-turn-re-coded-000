#I will use #name of the lesson to refer to the lesson name which taken fron
#display board
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#valid move
def position_taken?(board,index)
  if board[index]==" " || board[index]=='' || board[index]==nil
    return false
  elsif board[index]=="X" || board[index]=="O"
    return true
  end
end

def valid_move?(board,position)
  if position.to_i.between?(1,9) && !position_taken?(board,position.to_i-1)
true
else
  false
end
end
#move
def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end
#now we are typing for solution
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
