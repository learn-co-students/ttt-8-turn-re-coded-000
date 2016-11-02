def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(b,x)
  # x is string we should convert it to number using to_i
  #you don't need to chech if the value (x.to_i-1).between?(0,8) equals true or false because it is already boolean
    if  (x.to_i-1).between?(0,8)&&!position_taken?(b,x.to_i-1)
        true
      else
        false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    # if the position is empty we should return false
    false
    else
    true
  end
end

def INPUT_TO_INDEX(x)
index = x - 1
end

def move(board,index,ss)
    index = INPUT_TO_INDEX(index)
  board[index] = ss
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets
  index =  input.to_i

  if valid_move?(board,input)
      move(board,index,"X")
      display_board(board)
    else
      puts "Wrong entry, please try again!"
      turn(board)
  end

end
