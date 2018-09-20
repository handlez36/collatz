class Num < ApplicationRecord
    
    def is_even?(num)
        num % 2 == 0
    end

    def is_odd?(num)
        !is_even?(num)
    end

    def calculate_num_from_even(num)
        num / 2
    end
    
    def calculate_num_from_odd(num)
        num * 3 + 1
    end

    def next_number(num)
        if is_even?(num)
            next_number = calculate_num_from_even(num)
        else
            next_number = calculate_num_from_odd(num)
        end
    end

    def parseToReadableString(sequence)
        sequence.join(" > ")
    end

    def get_collatz_sequence
        sequence = [self.number]
        current = self.number

        while current > 1 do
            next_num = next_number(current)
            
            sequence << next_num
            current = next_num
        end

        parseToReadableString(sequence)
    end

end
