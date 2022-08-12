def my_min(list)
    result = list.first
    (0...list.length).each do |idx1|
        
        (0...list.length).each do |idx2| 

            if list[idx1] < list[idx2] && list[idx1] < result
                result = list[idx1]
            end

        end
    
    end
    result
end

# def my_min(list)
#     result = list.first
#     i = 0 
#     while i < list.length 
#         if list[i] < result 
#             result = list[i]
#         end
#         i += 1
#     end
#     result
# end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p  my_min(list)  # =>  -5


def largest_sub_sum(list)
    subs = []
    list.each_with_index do |ele1, i1|
        list.each_with_index do |ele2, i2|
            subs << list[i1..i2] 
        end
    end
    subs.reject!{|sub| sub.empty? }
    max_sub = subs.inject do |max, sub| 
        if sub.sum > max.sum
            sub
        else
            max
        end
    end
    max_sub.sum
end

# def all_subs(list)
#     return [list] if list.length <= 1
#     first =[ list.first ]
#     rest = list.drop(1)
#     first + all_subs(rest)
# end
# def all_subs(list)
#     i = 0
#     subs = []
#     while i < list.length 
#         j = 0
#         while j < list.length 
#             subs << list[i..j]
#             j += 1
#         end
#         i += 1
#     end
#     subs
# end
list = [5, 3, -7]
p largest_sub_sum(list) # => 8
list2 = [2, 3, -6, 7, -6, 7]
p largest_sub_sum(list2) # => 8 (from [7, -6, 7])