def two_bad_sum?(array, target)
    size = array.length #1
    (0...size).each do |i| #n 
        (i+1...size).each do |j| #n 
            return true if array[i] + array[j] == target
        end
    end
    false
end

# two_bad_sum? has O(n^2) because you have a nested loop. 
# the worst case scenario is that you loop through the array,
# comparing each incremented element to every other element, 
# two times. Quadratic number of possible matches depending on 
# the input size. 

arr = [0, 1, 5, 7]
# p two_bad_sum?(arr, 6) # => should be true
# p two_bad_sum?(arr, 10) # => should be false

def ok_two_sum?(arr, target)
    

end

def bsearch(arr, target)
    mid = arr.length / 2
    return mid if arr[mid] == target 

    left = arr[0...mid]
    right = arr[mid+1..-1]

    if arr[mid] > target
        bsearch(left, target)
    else
        bsearch(right, target)
        return left.length + mid + 1
    end

end