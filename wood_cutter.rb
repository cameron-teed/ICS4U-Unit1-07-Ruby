##
# The wood cutter program lets you choose two parameters for a board
# then calculates the height related to one board foot
#
# @author  Cameron Teed
# @version 1.0
# @since   2020-04-29
# frozen_string_literal: true

def board_foot(board_length, board_width)
  # Calculates the height for a board foot
  144 / (board_length * board_width)
end
begin
  # Asks user for input
  puts 'Insert the length of the board (inches):'
  # Gets the user input
  board_length = gets.chomp
  # Converts the input into a float
  board_length = board_length.to_f

  # Asks user for input
  puts
  puts 'Insert the width of the board (inches):'
  # Gets the user input
  board_width = gets.chomp
  # Converts the input into a floar
  board_width = board_width.to_f

  # Checks if user inputted correct number
  if board_length.positive? && board_width.positive?
    # Gets the height varaible
    board_height = board_foot(board_length, board_width)
    # Prints the height
    puts
    puts "The height that makes your dimensions equal to one Board Foot is #{board_height} inches"
    puts
    puts 'Done'
  else
    # Prints that you must enter a valid input
    puts
    puts 'Please enter a number greater than 0'
  end
rescue StandardError
  # If the input cannot be converted into a int, tell the user that they need to input the correct numbers
  puts 'Please enter a valid input'
end
