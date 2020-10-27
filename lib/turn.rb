def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
   user_input.to_i - 1
   valid_move?(board,index)

end


def valid_move?(board, index)
  if position_taken?(board, index)
    false
    elsif index.between?(0,8) 
    true
  end
end
  

def position_taken? (board,index)
  
  return !(board[index] == " " || board[index] == "" || board[index] == nil) 
    
end

def input_to_index(user_input)
   user_input.to_i - 1
end

def move(board, user_index, character = "X")
  board[user_index] = character
  board
end
  
