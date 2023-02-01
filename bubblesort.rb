unorder_array =[4,3,78,2,0,82, -6, 15]

def bubble_sort( array )
    array_length = array.length
    i = 0
    while i < array_length
        j = 0
        while j < array_length - i - 1
            if array[j] > array[j+1]
                bigger_number = array[j]
                array[j] = array[j+1]
                array[j+1] = bigger_number
            end
            j += 1
        end
        i += 1
    end
    print array
end

bubble_sort(unorder_array)