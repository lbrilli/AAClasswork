# list = [ 0, 3, 5, 4, 5, 1, 1, 2 ]

def my_min1(list)
    min = list[0]
    list.each_with_index do |ele1,idx1|
        list.each_with_index do |ele2,idx2|
            if idx2 > idx1 && ele2 < min
                min = ele2
            end
        end
    end  
    min
end



def my_min_2(list)
    min = list[0]
    list.each_with_index do |ele, idx|
        # n   
        if idx < list.length && ele < min
            
            min = ele
        end
    end
    min
end

# p my_min1(list)

list = [5, 3, -7]

# [2, 3, -6, 7, -6, 7]
# [-5, -1, -3]

# def largest_continuous_sub_sum(list)
#     arr = []

#     (0...list.length-2).each do |idx1|
#         (idx1+1...list.length-1).each do |idx2|
#            arr << [list[idx1] + list[idx2],list[idx2+1]]
#         end
#     end
#     p arr
#     arr.map {|sub| sub.sum}.max
# end

# p largest_continuous_sub_sum(list)

# def largest_continuous_sub_sum(list)
#     count = 1
#     cur_max = list[0] + list[1] + list[2]
#     cur_sum = 0
#     limit = list.length-1

#     while count < limit
#         cur_sum = list[count-1] + list[count] + list[count+1]
#         cur_max = cur_sum if cur_max < cur_sum
#         count += 1
#     end

#     cur_max
# end
list = [2, 3, -6, 7, -6, 7]

def largest_continuous_sub_sum(list)
    valleys = []
    counter = 1
    curr_sum = list[0]
    max_sum = 0

    while counter < list.length
        if list[counter].abs > curr_sum && list[counter] < list[counter].abs
            valleys << counter
            curr_sum = list[counter+1] if counter < list.length-2
        elsif curr_sum + list[counter] > curr_sum
            curr_sum += list[counter] 
        end
        max_sum = curr_sum if max_sum < curr_sum
        counter += 1
    end

    valleys.map do |valley|
        val_total = list.take(valley) + [list[valley]] + list.drop(valley+1)
        val_total = val_total.sum
        if val_total > list.take(valley) && val_total > list.drop(valley+1)
            if max_sum < val_total
                max_sum = val_total
            end
        end
    end

    max_sum
end

p largest_continuous_sub_sum(list)