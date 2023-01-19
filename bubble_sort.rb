# Method bubble_shot to sort out array of numbers from least to greatest
def bubble_shot(array)
    # Variable to track if any shifting occurs
    shift_count = 1
    did_shift = true
    # Loop as long as shift variable is greater than 0
    while did_shift == true
        # Loop through array
        array.each_with_index do |num, i|
            # Skip first number in array
            if i == 0
                next
            # Check if the left number is greater than the right
            elsif array[i-1] > array [i]
                # Swap array items and change shift variable
                array[i-1], array[i] = array[i], array[i-1]
                shift_count += 1
            else
                next
            end
        end
        # check if shift_count is greater than 0
        if shift_count == 0
            # set did_shit to false
            did_shift = false
        else
            # reset shift_count to 0
            shift_count = 0
        end
    end
    # Return sorted array
    p array
end


# Call method
bubble_shot([3, 2, 4, 1])
bubble_shot([4,3,78,2,0,2])