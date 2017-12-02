class Array
    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
        end 
    end
end