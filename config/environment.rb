require 'bundler'
Bundler.require

require_all 'lib'

WIN_COMBINATIONS = [
   [0,1,2],
   [3,4,5],
   [6,7,8],
   [0,3,6],
   [1,4,7],
   [2,5,8],
   [0,4,8],
   [6,4,2]
]

VALID_INPUT_RANGE = 0..8

#Named cells of the board for use with AI
TLC = 0 #Top Left Corner
TS = 1 #Top Side
TRC = 2 #Top Right Corner
MLS = 3 #Middle Left Side
MC = 4 #Middle Center
MRS = 5 #Middle Right Side
BLC = 6 #Bottom Left Corner
BS = 7 #Bottom Side
BRC = 8 #Bottom Right Corner