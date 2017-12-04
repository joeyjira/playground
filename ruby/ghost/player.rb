class Player
    def initialize(name)
        @name = name
        @wins = 0
    end

    def add_point
        @wins += 1
    end 
end