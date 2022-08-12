def slow_anagrams(str1, str2)
    all_str1= str1.chars.permutation.to_a
    all_str1.include?(str2.chars)
end

p slow_anagrams("gizmo", "sally")    #=> false
p slow_anagrams("elvis", "lives")    #=> true