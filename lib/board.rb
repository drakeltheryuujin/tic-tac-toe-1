require 'pry'

class Board


  attr_accessor :board, :win_condition


  def initialize
    @board= [["-","-","-"],["-","-","-"],["-","-","-"]]
  end


  def print

    @board.each do |row|
      p row
      puts 
    end

  end


  def checkWin
    #check row
    @board.each do |row|
      if (row.all? {|element| element=="x"})
          @win_condition=true
      end
    end 

    #check col 


    @board.each_with_object do |row, colarray|
      @board[row][col].each do |element|
          colarray << element
      end
    end



  end


  def gameOver


  end

end

bob= Board.new

bob.print

p bob.board[0]