require "byebug"
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
    sorted = arr.sort
    mid = sorted.length / 2
    left = sorted[0...mid]
    right = sorted[mid+1..-1]
    sorted.each do |ele|
        new_target = target - ele
            if ele + sorted[mid] < target
                    if bsearch(right, new_target)
                return true
            end
        else
                    if bsearch(left, new_target)
                return true
            end
        end
    end
    false
end

def bsearch(arr, target)
    mid = arr.length / 2
    return true if arr[mid] == target
    return false if arr.empty? 

    left = arr[0...mid]
    right = arr[mid+1..-1]
    if arr[mid] > target
        bsearch(left, target)
    else
        bsearch(right, target)
    end
    false
end

# p ok_two_sum?(arr, 6) # => should be true
# p ok_two_sum?(arr, 10) # => should be false

def best_two_sum?(arr, target)
    fastest = {}
    arr.each_with_index {|ele, i| fastest[ele] = i }
    arr.each_with_index do |ele, i|
        return true if fastest.has_key?(target - ele) && fastest[target - ele] != i
    end
    false
end

p best_two_sum?(arr, 6) # => should be true
p best_two_sum?(arr, 10) # => should be false