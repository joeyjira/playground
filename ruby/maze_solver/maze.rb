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

    def show_path(map)
      map.each do |line|
        puts line.join("")
      end
    end

      private

    def deep_dup(item)
      unless item.class == Array
        item.dup
      else
        new_arr = []
        item.each do |item|
          new_arr << deep_dup(item)
        end
        new_arr
      end
    end
end 

class Maze_Solver
  def initialize(maze)
    @maze = maze
    reset_values
  end

  def find_distance(point)
    p_x, p_y = point
    final_x, final_y = @maze.find_end
    ((p_x - final_x) + (p_y - final_y)).abs
  end

  def find_manhattan_estimate(point)
    dist_to_end = find_distance(point)
    dist_traveled = find_path(point).length
    f = dist_to_end + dist_traveled
  end
end

if __FILE__ == $PROGRAM_NAME
  filename = ARGV[0] || "maze1.txt"
  test_maze = MazeClasses::Maze.new(filename)
  puts test_maze
  puts "Start is at #{test_maze.start_ind}"
  puts "End is at #{test_maze.end_ind}"
  test_solver = MazeClasses::Maze_Solver.new(test_maze)
  test_solver.solve
end