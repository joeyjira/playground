require "set"

class Game
    def initialize(*players)
        @players = players
        @fragment = ""
        words = File.readlines("dictionary.txt").map(&:chomp)
        @dictionary = Set.new(words)
    end 

    def play_round
        is_word = false
        until is_word 
            puts "Enter a letter: "
            letter = gets.chomp
            @fragment += letter
            puts "Your String is now: #{@fragment}"
            is_word = true if @dictionary.include?(@fragment)
        end 
    end 
end

game = Game.new
game.play_round
