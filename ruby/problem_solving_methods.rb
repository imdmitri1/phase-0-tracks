arr =[11, 22, 33, 44, 55]
def search_array(arr, num)
    return_index = nil
    index = 0
        arr.each do |x|
            if arr[index] == num
                return_index == index
            end
            index += 1
    return_index
end

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
  n = arr.length 
  index = 0
  swapped = true 
  
  
  while swapped
    swapped = false 
    while index < n - 1 
    
         if arr[index] > arr[index + 1]
           num1 = arr[index]
           num2 = arr[index + 1]
           arr[index] = num2
           arr[index + 1] = num1
           swapped = true
         end
         index += 1 
       
    end #while end
    index = 0
  end
  arr 
end
  
#try to write with an until loop 
# an loop do 
arr = [9,1,1,1,1,1,6,2,7,2,8,2]
p bubblesort(arr)