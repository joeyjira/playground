class Array
    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
            i += 1 
        end 
        return self
    end

    def my_select(&prc)
        result = []
        self.my_each do |el|
            result.push(el) if prc.call(el)
        end 

        return result
    end

    def my_reject(&prc)
        result = [] 
        self.my_each do |el|
            result.push(el) unless prc.call(el)
        end 

        return result
    end 

    def my_any(&prc)
        self.my_each do |el|
            return true if prc.call(el)
        end 

        return false 
    end 

    def my_flatten
        return [] if self.length == 0
        
        result = []

        self.my_each do |el|
            if el.is_a? Array
                sub_array = el.my_flatten
                result += sub_array
            else
                result.push(el)
            end
        end

        return result
    end 

    def my_zip(*arrays)
        result = []

        self.each_index do |idx1|
            sub_array = []
            sub_array.push(self[idx1])
            arrays.each do |arr|
                sub_array.push(arr[idx1])
            end
            result.push(sub_array) 
            sub_array = []
        end 

        return result
    end 

    def my_rotate(default = 1)
        first_half = self.drop(default % self.length)
        second_half = self.take(default % self.length)
        return first_half + second_half
    end

    def my_join(default = "")
        result = ""
        self.each_index do |idx|
            result += self[idx].to_s
            break if idx == self.length - 1
            result += default
        end

        return result
    end

    def my_reverse
        result = []

        self.my_each do |el|
            result.unshift(el)
        end 

        return result 
    end

    def bubble_sort!(&prc)
        prc ||= Proc.new { |num1, num2| num1 <=> num2 }
        sorted = false

        until sorted
            sorted = true
            self.each_index do |idx|
                break if self[idx + 1] == nil
                if prc.call(self[idx], self[idx + 1]) == 1
                    self[idx], self[idx + 1] = self[idx + 1], self[idx]
                    sorted = false
                end 
            end 
        end

        return self
    end 
end

def factors(num)
    result = []

    (1..num).each do |el|
        result.push(el) if num % el == 0
    end

    return result
end

array = [1, 2, 3, 4]
a = [ "a", "b", "c", "d" ]
disarray =[3, 7, 1, 2, 9, 1, 3, 8, 4, 5]

puts "#{ disarray.bubble_sort! { |num1, num2| num2 <=> num1 } }"