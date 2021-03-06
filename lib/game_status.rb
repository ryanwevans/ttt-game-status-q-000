# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") || (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
      return win_combination # return the win_combination indexes that won.
    end
  end
  return false
end


def full?(board)
  board.all? do |index|
    index != " "
  end
end


def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  elsif won?(board) == false && full?(board) == false
    return false
  else
    return false
  end
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end


def winner(board)
  if won?(board) && board.count("X") > board.count("O")
    return "X"
  elsif won?(board) && board.count("O") > board.count("X")
    return "O"
  else
  end
end
