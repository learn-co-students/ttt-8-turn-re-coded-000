  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  def valid_move?(board,position)
    index=position.to_i-1;
    if position.to_i.between?(1,9)&&!position_taken?(board,index)
      true
    else
      false
    end
  end
  def position_taken?(board,index)
    if board[index] == " "||board[index] ==""||board[index] ==nil
      return false
    elsif board[index] =="X"||board[index] =="O"
      return true
  end
  end
  def input_to_index(position)
    position.to_i-1
  end
  def move(board,position,value="X")
    index=input_to_index(position)
    board[index] = value
  end


  def turn(board)
    puts "Please enter 1-9:"
  input=gets.strip
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
  else
    turn(board)
  end
end
