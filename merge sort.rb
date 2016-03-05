def merge_sort(arr)
  if arr.count<=1
    return arr
  end
  mid = arr.count/2
  first_half = merge_sort arr.slice(0, mid)
  second_half = merge_sort arr.slice(mid, arr.count - mid)
  arr = []
  first_half_1 = 0
  second_half_1 = 0
  while first_half_1 < first_half.count && second_half_1 < second_half.count
    num_1 = first_half[first_half_1]
    num_2 = second_half[second_half_1]
    if num_1 <= num_2
      arr << num_1
      first_half_1 += 1
    else
      arr << num_2
      second_half_1 += 1
    end
  end

  while first_half_1 < first_half.count
    arr << first_half[first_half_1]
    first_half_1 += 1
  end
  while second_half_1 < second_half.count
    arr << second_half[second_half_1]
    second_half_1 += 1
  end
  arr
end

puts merge_sort([9,8,7,6,5,4,3,2,1])