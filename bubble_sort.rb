

def bubble_sort(array_input)
    mutate_array = array_input
    # pass through function
    # takes array and bubbles one at a time. returns mutated array when mutated array = mutate array, done
    check_array= Array.new(0)
    i = array_input.length*array_input.length
    while i > 0 do 
        mutate_array = pass_bubble(mutate_array)
        if !(check_array == mutate_array)
            i +=1
        end
        i -=1
        check_array = mutate_array
    end
    return mutate_array

end

def pass_bubble(bubble_array)

    j = bubble_array.length
    while j > 0
        if -j == (-1)
            return bubble_array
        end
        if bubble_array[-j] > bubble_array[-j+1]
            mid = bubble_array[-j]
            bubble_array[-j] = bubble_array [-j+1]
            bubble_array[-j+1] = mid
        end
        j -=1
    end
end

test=[9,8,7,4,5,6,3,2,1,4,5,0]
p bubble_sort(test)