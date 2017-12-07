class Maze
    def initialize(path)
        @maze = File.readlines('maze.txt')
    end

    def find_start
        result = []
        @maze.each_index do |idx|
            next unless @maze[idx].include?("S")
            result.push(idx)
            result.push (@maze[idx].index("S"))
        end 
        result
    end
end 