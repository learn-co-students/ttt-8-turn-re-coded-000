def display_board(board)
puts  " #{board[0]} | #{board[1]} | #{board[2]} "
puts  "-----------"
puts  " #{board[3]} | #{board[4]} | #{board[5]} "
puts  "-----------"
puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(position)
  index=position.to_i-1
  return index
end


def move(board, position, value="X")
  index=input_to_index(position)

  board[index] = value
end


def position_taken? (board,position)
  if board[position]==" " || board[position]=="" || !board[position]
    return false
  elsif board[position]=="X" || board[position]=="O"
    return true
  end
end

def valid_move? (board,position)
  if  position.to_i< 10 &&position.to_i>0
    return ! position_taken?(board,position.to_i-1)
  else
    return false
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board,position)
  if board[position]==" " || board[position]=="" || !board[position]
    return false
  elsif board[position]=="X" || board[position]=="O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end
