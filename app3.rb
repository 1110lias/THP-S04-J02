require 'pry'
require 'bundler'
require_relative 'lib/player'
Bundler.require

require_relative 'lib/game'

puts ""

my_game = Game.new("Wolverine", 4)                          # Creation d'une instance de la class "Game"

puts "tentative recup info ds app: "
puts Game.all

binding.pry


