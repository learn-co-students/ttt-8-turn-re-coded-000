def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
   end
    def valid_move?(board, position)
      if position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
            true
          else false
           end
         end
        
         def move(board,position,value ="X")
            board[position.to_i - 1] = value
           end
            def turn(board)
               puts "Please enter 1-9:"
                position = gets.strip
                 if (valid_move?(board,position))
                    move(board,position)
                  else turn(board)
                   end
                    display_board(board)
                  end
                  def position_taken?(board, location)
                     board[location] != " "
                    end
