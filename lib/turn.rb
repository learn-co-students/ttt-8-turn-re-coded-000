 def turn(board)
   puts "Please enter 1-9:"
   position = gets.strip
   #position=input_to_index(input)
   while ! valid_move?(board,position)
       puts "Please enter 1-9:"
       position = gets.strip
      # position=input_to_index(input)
     end
   #if valid_move?(board,position)
      move(board, position.to_i, "X")
  #  else
  #    puts "Please enter 1-9:"
  #    turn(board)
  #  end
    display_board(board)

 end


 def input_to_index(input)
   index=input.to_i
   return index
 end

def move(arr,indx,usr_="X")
  index = indx -1
  arr[index] = usr_
  return arr
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,position)
  position=(position.to_i) -1
  if position >= 0 && position <= 8 #position.to_i.between?(0,8)
    if ! position_taken?(board, position)
      return true
    #else return false
    end
  else return false
  end
  #return false
end
# code your -#position_taken? method here!
def position_taken?(board,position)
 if board[position]== "" || board[position]== " "
  return false
 elsif board[position]== nil
  return false
 elsif board[position]=="X" || board[position]=="O"
   return true
 end
end
