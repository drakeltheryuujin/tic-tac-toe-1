class Player
  
  attr_accessor :name, :score

  def intro
    #introduces user to the game
    puts "Welcome to Tic Tac Toe!"
    puts "Type \"h\" for help (do you really not know how to play??)"
  end

  def help
    #shows the user how to play the game
    puts "Tic-tac-toe is game for two players, X and O, who take turns marking the spaces in a 3×3 grid. 
          The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game."
    make_move
  end

  def get_user_input(user_input)
    #get the user's input
    user_input = gets.chomp
  end

  def make_move
    #display the board so far
    puts @board

    #give user the instruction
    puts "Choose a space using the numbers 1-9 (from left to right, top to bottom)"
    update_game

  end

  def update_game
    user_input = gets.chomp.downcase
    
    #check to make sure the user typed a valid options
    if user_input > 0 && user_input < 10
      #update the game board
    elsif user_input == "h"
      help
    else
      make_move
    end
  end

  def get_coordinates
    
  end

  def is_empty?
    #determines if a space is empty

  end

end
