data = File.open("./data/randomstuff", "r").read.unpack("Q*")
p data

def merge(arr1, arr2)
  arr1 | arr2
end

def merge_sort(arr)
  if arr.count < 2
    p arr
    return arr
  else
    return merge(merge_sort(arr[0..(arr.count/2 - 1)]), merge_sort(arr[(arr.count/2)..-1]))
  end
end

p merge_sort(data) == data
