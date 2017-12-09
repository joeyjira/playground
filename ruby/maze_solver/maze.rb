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

    def find_end
        result = []
        @maze.each_index do |idx|
            next unless @maze[idx].include?("E")
            result.push(idx)
            result.push (@maze[idx].index("E"))
        end 
        result
    end

    def valid_path?(point)
        point == " "
    end 
end 