board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,index)
if (index.to_i-1).between?(0,8)
  if !position_taken?(board,index.to_i-1)
        return true
  end
  else
    return false
  end
end
def position_taken?(board,position)
  if board[position]== " " || board[position]== "" || board[position]== nil
 return false
elsif board[position]== "X" || board[position]== "O"
 return true
 end
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
position = "100"
puts valid_move?(board, position)

def input_to_index(position)
position.to_i - 1
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
