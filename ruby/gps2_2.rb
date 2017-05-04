# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create HASH
  # set default quantity - 1
  # 
  # print the list to the console [can you use one of your other methods here?]
# output: list
def create_list(items)
    items_array = items.split(' ')
    grocery_hash = {}
    items_array.each do |item|
        add_item(grocery_hash, item)
        #grocery_hash[item] = 1
    end
    grocery_hash
end
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
    # add item to list
# output: updated list

def add_item(list, item, quantity = 1)
    list[item] = quantity
end

# Method to remove an item from the list
# input: list, item name
# steps: 
    # delete item from list
# output: updated list

def remove_item(list, item)
  list.delete(item)
  list
end

# Method to update the quantity of an item
# input:list, item, updated quantity
# steps:
  # add new quantity amount to quantity 
# output: updated list

def update(list, item, quantity)
  if list.has_key?(item)
    list[item] = quantity
  else puts "No item found"
  end
  list 
end

# input: list
# steps:
  # Print list to screen 
# output: list

def print_list(list)
  puts "_-" *25 + "\n\n"
  puts "Here is your Grocery List: \n\n"
  list.each do |item, quantity|
    puts "\tItem: #{item}     \tAmount:  #{quantity}"
  end
  puts "_-" *25
end

# def print(list)
#   puts "Grocery list:"
#   list.each {|key,value| puts "#{key} - #{value}"}
# end

#       DRIVER CODE--------------------------------------------------------
grociers = "carrots apples cereal pizza"
my_grociery_list = create_list(grociers)
p my_grociery_list
add_item(my_grociery_list, "bread")
p my_grociery_list
add_item(my_grociery_list, "milk", 5)
p my_grociery_list

remove_item(my_grociery_list, "bread")
p my_grociery_list

update(my_grociery_list,"mmilk",2)
update(my_grociery_list,"bread",3)
update(my_grociery_list,"apples",6)
p my_grociery_list


print(my_grociery_list)

#release 2
to_buy = ""
all_grocieries = create_list(to_buy)
add_item(all_grocieries, "lemonade", 2)
add_item(all_grocieries, "tomatoes", 3)
add_item(all_grocieries, "onions")
add_item(all_grocieries, "ice cream", 4)
p all_grocieries
remove_item(all_grocieries, "lemonade")
update(all_grocieries, "ice cream", 1)
print_list(all_grocieries)



# What did you learn about pseudocode from working on this challenge?
# That pseudocode is the most difficult part of the programming but it makes the rest of the job easier.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays would not the job in a good way in this challenge, with the array we would have to retype the item and quantity in order to update/remove the item.

# What does a method return?
# Method returns the value of the last line

# What kind of things can you pass into methods as arguments?
# Any available variable or return of the method

# How can you pass information between methods?
# By making sure there is correct output from the method

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Pseudocode is very important, and a need of checking correct output too as well.