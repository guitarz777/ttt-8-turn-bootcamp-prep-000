def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(number)
  number.to_i - 1 
end


def not_occupied?(board, index)
  if board[index] == "" || board[index] == " "
    return true 
  else
    return false 
  end
end


def valid_move?(board, index)
  if index >= 0 && index <=8 && not_occupied?(board, index)
    return true
  else 
    return false
  end
end


def move(board, index, char="X")
  if valid_move?(board, index)
    return board[index] = char
  end
end

    
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    return turn(board)
  end
end