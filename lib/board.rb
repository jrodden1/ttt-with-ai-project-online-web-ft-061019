class Board
   attr_accessor :cells
   #sets the cells of the board to a 9 element array of " "
   #should probably use the reset! method
   def initialize
      self.reset!
   end
   
   #can reset the state of the cells in the board
   #sets the cells of the board to a 9 element array of " "
   def reset!
      self.cells = Array.new(9, " ")
   end

   def display
      puts <<~BOARD
       #{cells[TLC]} | #{cells[TS]} | #{cells[TRC]} 
      -----------
       #{cells[MLS]} | #{cells[MC]} | #{cells[MRS]} 
      -----------
       #{cells[BLC]} | #{cells[BS]} | #{cells[BRC]} 
      BOARD
   end

   #takes in user input and returns the value of the board cell
   def position(user_input)
      self.cells[convert_to_arr_index(user_input)]
   end

   #returns true for a full board
   def full? 
      #check if all the cells are full
      full_test = self.cells.all? {|cell| cell == "X" || cell == "O"}
   end

   #returns the amount of turns based on cell value
   def turn_count
      self.cells.count {|cell| cell == "X" || cell == "O"}
   end

   #returns the array index position when given a user input position
   def convert_to_arr_index(position_number)
      position_number.to_i - 1
   end
   #returns true if the position is X or O
   #returns false if the position is empty or blank
   def taken?(position_number)
      position_to_check = self.cells[convert_to_arr_index(position_number)]
      
      position_to_check == "X" || position_to_check == "O"
   end

   def taken_by?(position_number)
      position_to_check = self.cells[convert_to_arr_index(position_number)]
      
      if position_to_check == "X" 
         "X"
      elsif position_to_check == "O"
         "O"
      else
         nil 
      end
   end

   #returns true for user input between 1-9 that is not taken
   def valid_move?(position_number)
      valid_input_range = 0..8
      indexed_input = convert_to_arr_index(position_number)
      
      # Check to make sure the number that the user put in is in the valid index range of 0-8 and is NOT (thus the !) taken
      valid_input_range.include?(indexed_input) && !self.taken?(position_number)
   end
   
   #updates the cells in the board with the player token according to the input
   def update(position_number, player_obj)
      self.cells[convert_to_arr_index(position_number)] = player_obj.token
   end

   

end