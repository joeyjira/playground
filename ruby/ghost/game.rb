class Game
    def initialize
        @players = [1, 2]
        @fragment = ""
        @dictionary = File.readlines("dictionary.txt")
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
