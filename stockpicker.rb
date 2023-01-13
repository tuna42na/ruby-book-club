array = [14,3,1,23,4,2,45,230,3,7]

def stock_picker(array)
    stock_difference = 0
    left_bound = 0
    right_bound = 1
    first_day = 0
    last_day = 0
    while right_bound < array.length
        current_difference = array[right_bound] - array[left_bound]
        shifted_difference = array[right_bound] - array[left_bound + 1]
        if shifted_difference > current_difference
            left_bound += 1
        elsif current_difference > stock_difference
            stock_difference = current_difference
            first_day = left_bound +1
            last_day = right_bound +1
        else
            right_bound += 1
        end
    end
    puts "The highest yield is between days #{first_day} and #{last_day}\nFor a total of: $#{stock_difference}"
end

stock_picker(array)