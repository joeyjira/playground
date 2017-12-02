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

    def self.factors(num)
        result = []

        (1..num).each do |el|
            result.push(el) if num % el == 0
        end

        return result
    end
end

array = [1, 2, 3, 4]
a = [ "a", "b", "c", "d" ]

puts "#{Array.factors(10)}"