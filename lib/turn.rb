def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,position)
  if  ((position.to_i.between?(1,9)) && !(position_taken?(board,position.to_i - 1)))
    return true
  else
    return false
  end
end
def position_taken?(board,position)
  if board[position]==" " || board[position]=="" || board[position]==nil
    return false
  else board[position]=="X" || board[position]=="O"
    return true
  end
end
def input_to_index(input)
  index=input.to_i
  return index
end
def move(board,index,arg="X")
  index = index -1
  board[index]= arg
  return board
end
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  #while valid_move?(board,position)
  if valid_move?(board,position)
    move(board,position.to_i,"X")
  else
   puts "Please enter 1-9"
   position = gets.strip
  end
  display_board(board)
end
