arr =[11, 22, 33, 44, 55]
def search_array(arr, num)
    return_index = nil
    index = 0
        arr.each do |x|
            if arr[index] == num
                return_index = index
            end
            index += 1
        end
    return_index
end

# p search_array(arr,33)



def fib(num)
  fib_array = [0,1]
  until fib_array.length == num
  x = (fib_array[-2] + fib_array[-1])
  fib_array.push(x)
  end
  fib_array
end

# take an array of numbers
# compare the first number (or index 0 ) with the next number (the next index)
# and put the lesser number first 
#   in other words swap the numbers if the first number is higher
#   then make a new array with the compared numbers 
#   until no numbers in the array are swapped continue

# while the numbers compared need to be swapped, run the command
#   break if the numbers don't need to be swapped , then the sort is done


def bubblesort(arr)
  n = arr.length - 1
  index = 0
    until index > n
          n.times do |i| if arr[i] > arr[i + 1]
                          w = arr[i + 1]
                          arr[i + 1] = arr[i]
                          arr[i] = w
                         end 
          end 
    index +=1 
    end 
arr 
end

arr = [9,1,3,8,7,4,7,6,2,6,8,2,5,1,9,7,5,3,8,6,4,1]
p bubblesort(arr)    
