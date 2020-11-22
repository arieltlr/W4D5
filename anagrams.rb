require "byebug"
def first_anagram?(str1, str2)
    str1_chars = str1.split("")

    anagrams = str1_chars.permutation.to_a
    anagrams.map! { |subarr| subarr.join("")}
    anagrams.length
    
end

# p first_anagram?("ariels", "eirals")
# this is O(n!) time complexity. As you increase size of input, 
# output increases by multiple of previous input

def second_anagram?(word1, word2)
    word1_arr = word1.split("") #w1 m 
    word2_arr = word2.split("") #w2 n

    word1_arr.each do |char| #w1 m
        idx_char = word2_arr.find_index(char) #n
        if !idx_char.nil? # 1
            word2_arr.delete_at(idx_char) #w2 1
        end
    end
    word2_arr.length == 0

    # m + n + mn
    # O(mn)

end
# p second_anagram?("arielarieltaylortaylor", "arielarieltaylortaylor")

def third_anagram?(word1, word2)
    return false if word1.length != word2.length 

    word1_array = word1.split("") #n 
    w1_sorted = word1_array.sort #nlogn
    w1_sorted == word2.split("").sort

    # O(nlogn +mlogm)
    
end

# p third_anagram?("arielarieltaylortaylor", "arielarieltaylortaylor")

def fourth_anagram?(word1, word2)
    letters1 = Hash.new(0) #1
    letters2 = Hash.new(0) #1

    word1.each_char do |char| #n
        letters[char] += 1
    end
    word2.each_char do |char| #m
        letters2[char] += 1
    end

    letters1 == letters2 #n + m

    # O(n +m)

end

p fourth_anagram?("sally", "gizmo")
