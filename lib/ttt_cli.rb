class CLI
   def initialize
      system "clear"
      puts <<~WELCOME
         Welcome to TicTacToe with Computer Players

         How would you like to play the game?

         1. Human vs Human
         2. Human vs Computer
         3. Computer vs Computer

         Type in your number selection or type exit to quit.
      WELCOME
      main_menu
   end

   def main_menu
      user_input = gets.chomp.downcase

      until user_input == "exit"
         case user_input
         when "1"
            Game.new
         when "2"
            Game.new(Player::Human.new("X"), Player::Computer.new("O"))
         when "3"
            Game.new(Player::Computer.new("X"), Player::Computer.new("O"))
         when "exit"
            break
         end
      end
   end
end