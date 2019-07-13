class Player
   attr_reader :token
   attr_accessor :player_number
   #accepts a token to assign (FAILED - 14)
   def initialize(token)
      @token = token
   end

end