require "set"

class Game
    def initialize(*players)
        words = File.readlines("dictionary.txt").map(&:chomp)
        @players = players
        @dictionary = Set.new(words)
    end 

    def play_round
        @fragment = ""
        is_word = false
        until is_word 
            puts "Enter a letter: "
            letter = gets.chomp
            if valid_word?(word)
                @fragment << letter
            else
                puts "Please enter a valid letter"
                next
            end
        end 
    end

    def valid_word?(word)
        @dictionary.include?(word)
    end
end

game = Game.new
game.play_round
