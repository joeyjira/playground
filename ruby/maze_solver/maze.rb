class Maze
    DELTA = [
        [1, 0],
        [0, 1],
        [1, 1],
        [-1, 0],
        [0, -1],
        [-1, -1],
        [1, -1],
        [-1, 1]
    ]
    def initialize(path)
        @maze = File.readlines('maze.txt')
        @start = find_start
        @end = find_end
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

    def trace_path
        @maze[@start[0]][@start[1]]
        @maze[@end[0]][@end[1]]
    end 

    def adjacent_path?(point)

    end

    def travel_path(path)
      puts "Traveling path of #{path.inspect}..."
      copy_map = deep_dup(@map)
      path.each do |coords|
        x, y = coords
        point = copy_map[y][x]
        if point == "X"
          puts "This path back-tracks to #{x}, #{y}."
        elsif point == "*"
          puts "This path hits a wall at #{x}, #{y}."
        else
          copy_map[y][x] = "X"
        end #end inner if else
      end #end path.each

      show_path(copy_map)
    end
end 