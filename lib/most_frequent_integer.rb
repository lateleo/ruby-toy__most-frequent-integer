# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
    unique = arr.uniq
    freq_ary = []
    unique.each do |elem1|
        count1 = 0
        arr.each do |elem2|
            if elem1 == elem2
                count1 = count1.next
            end
        end
        freq_ary.push(count1)
    end
    hi_freq = 0
    freq_ary.each do |elem|
        if elem > hi_freq
            hi_freq = elem
        end
    end
    count2 = 0
    freq_ary.each do |elem|
        if elem == hi_freq
            count2 = count2.next
        end
    end
    if count2 > 1
        return nil
    end
    return unique[freq_ary.index(hi_freq)]
end
