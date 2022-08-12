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

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p  my_min(list)  # =>  -5


    # result

        # i = 0
    # result = list.first
    # while i < list.length
    #    if (0...list.length).to_a.all? {|num| list[i] < list[num] } && list[i] < result
    #     result = list[i]
    #    end
    #     i += 1 
    # end
    # result