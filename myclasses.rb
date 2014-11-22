
# sorts elements in array from least to greatest without using builtin #sort method

arr = [9,8,7,6,5,4,3,2,1]

i = 0

arr.length.times do

while i < arr.length - 1 do

  if arr[i] > arr[i + 1]
    arr[i], arr[i + 1] = arr[i + 1], arr[i]
  end

i += 1

end

i = 0
end

print arr