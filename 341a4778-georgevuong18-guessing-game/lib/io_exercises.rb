# I/O Exercises
# * Write a `guessing_game` method. The computer should choose a number between
#   1 and 100. Prompt the user to `guess a number`. Each time through a play loop,
#   get a guess from the user. Print the number guessed and whether it was `too
#   high` or `too low`. Track the number of guesses the player takes. When the
#   player guesses the number, print out what the number was and how many guesses
#   the player needed.
# * Write a program that prompts the user for a file name, reads that file,
#   shuffles the lines, and saves it to the file "{input_name}-shuffled.txt". You
#   could create a random number using the Random class, or you could use the
#   `shuffle` method in array.

  def guessing_game
    answer = rand(100)
    counter = 0
    # prompt user to guess a number
    puts "Guess a number between 1 and 100"
    user_input = gets.chomp
    puts user_input
     raise NoMoreInput if user_input == 0
    # loop do
    #   user_input = gets.chomp
    #   puts user_input
    #   if user_input > answer
    #     counter += 1
    #     puts "#{user_input} is too high, guess again"
    #   elsif user_input < answer
    #     counter += 1
    #     puts "#{user_input} is too low, guess again"
    #   else
    #     puts " #{user_input} is right! And it took #{counter} guesses"
    #     break
    #   end
    # end
  end
