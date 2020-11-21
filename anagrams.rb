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
    word1_arr = word1.split("") #w1 n 
    word2_arr = word2.split("") #w2 n

    word1_arr.each do |char| #w1 n 
        if word2_arr.include?(char) #w2 n
            idx_char = word2_arr.find_index(char) #w2 n
            word2_arr.delete_at(idx_char) #w2 n
        end

    end
    word2_arr.length == 0

    #w1: m + m
    #w2: n + n^3
    # O(n^3)

end
# p second_anagram?("arielarieltaylortaylor", "arielarieltaylortaylor")

def third_anagram?(word1, word2)
    return false if word1.length != word2.length 

    word1_array = word1.split("") #n
    w1_sorted = word1_array.sort #n - bubble sort under the hood which is n
    w1_sorted == word2.split("").sort

    # O(n^2 + m^2)
    
end

# p third_anagram?("arielarieltaylortaylor", "arielarieltaylortaylor")

def fourth_anagram?(word1, word2)
    word_smash = word1 + word2 # 1
    letters = Hash.new(0) #1

    word_smash.each_char do |char| #n
        letters[char] += 1
    end

    letter_values = letters.values # n -  some fraction n is best case. n is worst case
    letter.values.all? {|val| val % 2 == 0} # n - has to iterate over all of them

    # 1 + n + n^2
    # O(n^2)

end

p fourth_anagram?("sally", "gizmo")
