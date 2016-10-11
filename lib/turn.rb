def display_board(board=[" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(position)
  position .to_i-1
end
  def move(board,position,value="X")
index=input_to_index(position)
board [index]=value
end

# code your #valid_move? method here
def valid_move?(board,position)
  if position.to_i.between?(1,9)&&!position_taken?(board,position.to_i-1)
    true
  else
    false
  end
end
def position_taken?(board,index)
  if board[index] == " "|| board[index]=="" || board[index]==nil
    false
  elsif board[index]=="X"||board[index]=="O"
    true
  end

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
