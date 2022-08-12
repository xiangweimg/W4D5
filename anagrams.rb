def slow_anagrams(str1, str2)
    all_str1= str1.chars.permutation.to_a
    all_str1.include?(str2.chars)
end

p slow_anagrams("gizmo", "sally")    #=> false
p slow_anagrams("elvis", "lives")    #=> true

def mid_anagrams(str1, str2)
    str2_split = str2.split("") 
    str1_split = str1.split("")
    str1_split.each do |char| 
        if str2_split.find_index(char)
           str2_split.delete_at(str2_split.find_index(char)) 
        else 
            return false
        end
    end
    return true if str2_split.empty? 
    false
end

p mid_anagrams("gizmo", "sally")    #=> false
p mid_anagrams("elvis", "lives")    #=> true

def third_anagrams(str1, str2)
    str1_split = str1.chars
    str2_split = str2.chars

    str1_split.sort == str2_split.sort
end

p third_anagrams("gizmo", "sally")    #=> false
p third_anagrams("elvis", "lives")    #=> true

def fourth_anagram(str)