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
end

array = [1, 2, 3, 4]

puts array.my_select { |el| el.even? }