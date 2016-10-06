def display_board (board =["o","x","x","x","x","x","o","o","o"])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,index)
if index.to_i >=1 && index.to_i <=9
if position_taken?(board,index.to_i-1)
  return  false

else
  return true

end
end

end


def position_taken?(board,position)

  if board[position]=="" || board[position]==" " || board[position]==nil
    return false
elsif board[position]=="X" || board[position]=="O"
  return true

end
end
def move(board,position,player="X")
   board[position.to_i-1] = player

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
