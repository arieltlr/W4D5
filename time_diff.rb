
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
def my_min(list)
    minimum = 0
    list.each do |ele1|
        list.all? do |ele2|
           minimum = ele1 if ele1 <= ele2 
        end
           
    end
    minimum
end


# p my_min(list)  # =>  -5
# O(n^2)

def refactor_my_min(list)
    minimum = list.first
    list.each do |ele1|
        minimum = ele1 if ele1 < minimum
    end 
    minimum
end

# p refactor_my_min(list)  # =>  -5
# 0(n)

def lss(arr)
    subs = []
    

    (0...arr.length-1).each do |i|
        (i+1...arr.length).each do |j|
            subs << arr[i..j].sum
        end
    end
    subs.max
end

list1 = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
p lss(list2)

def lss_refactor(arr) 
    premium = 0
    new_max = 0    
  (0...arr.length).each do |i|
     premium += arr[i]
      premium = premium < arr[i] ? arr[i] : premium
      new_max = premium if premium > new_max 
   end
 new_max
end

list1 = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
p lss_refactor(list1)
p lss_refactor(list2)
