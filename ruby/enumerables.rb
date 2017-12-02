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
end

array = [1, 2, 3, 4]
a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
c = [10, 11, 12]
d = [13, 14, 15]

puts "#{a.my_zip([1,2], [8])}"