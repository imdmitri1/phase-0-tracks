# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

zombie_apocalypse_supplies.each { |x| puts "* #{x} *" }
zombie_apocalypse_supplies.join(" * ")

# ----


# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

def sort(arr)
alph = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"
  n = arr.length - 1
  i2 = 0
    until i2 > n
          n.times do |i| 
          if alph.index((arr[i])[0]) > alph.index((arr[i+1])[0])
                          temp_var = arr[i+1]
                          arr[i+1] = arr[i]
                          arr[i] = temp_var
                         end 
          end 
    i2 +=1 
    end 
arr 
end

p sort(zombie_apocalypse_supplies)


# ----


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

def search(arr,str)
    haveit = false
    arr.each do |x| if x == str
                    puts "got it: #{x}" 
                    haveit = true
                     end
             end 
    if haveit == false 
     p "no match"
    end
                    
end
search(zombie_apocalypse_supplies, "rations")


# ----

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

def keep_only(arr,x)
    (arr.length - x).times { |i| arr.delete_at(rand(x)) }
    puts arr
end
#keep_only(zombie_apocalypse_supplies, 5)

# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]


zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq!


# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

extinct_animals.each {|k,v| puts "#{k} - #{v} *"}

# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.


#option #1 but uses .each
extinct_animals.each do |k,v| if v > 2000
                               # extinct_animals.delete(k)   #commented for no damage to hash
                            end
                    end
puts extinct_animals

#option #2 

def keeptill(h,x)
    i = 0 
    a1 = []
    a2 = []
    a1 << h.values                  #didn't know at that point that 
    a2 << h.keys                    # I can use indexes on h.keys
    while h.length > i
            if   a1[0][i] > x
                h.delete(a2[0][i])
            end
    i += 1 
    end 
puts h
end
#keeptill(extinct_animals,1997)


# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

def keeptill(h,x)
            h.each do |k,v| if v > x
                            h.delete(k)
                            end
                    end
puts h
end
        #keeptill(extinct_animals,1997)


# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

def includedin(h,k)
    i = 0 
    nomatch = true
    until i > h.length
        if h.keys[i] == k
            puts "yes, it is included: #{k}"
            nomatch = false
        and
    i +=1
    end
    if nomatch == true ; puts "no match" ; end
end
includedin(extinct_animals,"Andean Cat")
includedin(extinct_animals,"Dodo")
includedin(extinct_animals, "Saiga Antelope")



# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.

extinct_animals.delete_if {|k,v| k == "Passenger Pigeon"}.flatten

# ----
