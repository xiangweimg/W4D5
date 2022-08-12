def my_min(list) #n ^ 2
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

# def my_min(list) n 
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

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p  my_min(list)  # =>  -5


# def largest_sub_sum(list) # n^2 + 2n
#     subs = []
#     list.each_with_index do |ele1, i1|
#         list.each_with_index do |ele2, i2|
#             subs << list[i1..i2] 
#         end
#     end
#     subs.reject!{|sub| sub.empty? }
#     max_sub = subs.inject do |max, sub| 
#         if sub.sum > max.sum
#             sub
#         else
#             max
#         end
#     end
#     max_sub.sum
# end


def largest_sub_sum(list)
    max = list.first
    current = list.first
    list.drop(1).each do |ele|
        # max += ele 
        current = current + ele
        if current < 0 && max > 0
            current = 0
        elsif  max < 0
            max = ele if ele > max
            
        elsif current > max 
            max = current
        end
         
    end

    max
end



# def largest_sub_sum(list)
#     max_sum = list.sum 
#     while list.length > 0 
#         list.shift
#         max_sum = list.sum if list.sum > max_sum
#     end
#     while list.length > 0 
#         list.pop
#         max_sum = list.sum if list.sum > max_sum 
#     end
#     max_sum           
# end


list = [5, 3, -7]
p largest_sub_sum(list) # => 8
list2 = [2, 3, -6, 7, -6, 7]
p largest_sub_sum(list2) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_sub_sum(list) # => -1 (from [-1])