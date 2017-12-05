require "set"

class Game
    def initialize(*players)
        words = File.readlines("dictionary.txt").map(&:chomp)
        @players = players
        @dictionary = Set.new(words)
        @current_player = @players[0]
    end 

    def play_round
        @fragment = ""
        is_word = false
        i = 0
        until is_word 
            puts "Enter a letter: "
            letter = gets.chomp
            if valid_word?(word)
                @fragment << letter
                @current_player = @players[i]
                i += 1 
                i = 0 if i > @players.length - 1
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
