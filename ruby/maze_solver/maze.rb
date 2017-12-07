class Maze
    def initialize(path)
        @maze = File.readlines('maze.txt')
    end

    def find_start
        result = []
        @maze.each_index do |line_index|
            next unless line_index.include?("S")
        end 
    end
end 