def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
if  !valid_move?(board,input)
  turn(board)
else
  move(board,input)
  display_board(board)
end
end
def position_taken?(board, index)

if board[index] == " "
  false
elsif board[index] == "" || board[index] == " "
  false
elsif board[index] == nil || board[index] == " "
  false
elsif board[index] == "X" || board[index] == "O"
  true
end
end
def valid_move?(board, index)
  if !position_taken?(board, index.to_i-1)&& index.to_i.between?(1, 9)
  return  true

end
  return false
end

  def input_to_index(user_input)
     user_input.to_i-1
  end
  def move(board, index, character ="X")
    board[index.to_i-1]=character
  end
