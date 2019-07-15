So for some reason, the game board is not updating.  Need to figure out when actually running the CLI that it doesn't update (maybe check on Attr_accessor area and see if something isn't actually writing)

Ideas for AI.  

Super Lame AI -> rand(0..8).to_s

Computer Player iterates through the WIN_COMBINATIONS array and checks if a spot is taken and if it is taken by its own token (x or O)

Computer checks to see if its own mark is in the winning combinations locations on every turn.  if not, it plays based on that winning combination.  
https://blog.ostermiller.org/tic-tac-toe-strategy
https://www.youtube.com/watch?v=5n2aQ3UQu9Y

select out corner numbers, center number, and side numbers 
Make sure that the other player wont win and make a good choice to win. 