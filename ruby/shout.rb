# module Shout

#     def self.yell_angrily(word) 
#     word + "!!!" + " :("
#     end

#     def self.yell_happily(word)
#     word.upcase + "!!!!!" + " :)))"
#     end
# end


module Shout
    def happy(name)
        puts "#{name} is super happy today! ohh-yeaaaa!!!"
    end
    def sad(name)
        puts "#{name} is sad at the moment, lets make him SMILEeee!!!"
    end
end

class Coworker
    include Shout
end

class Boss
    include Shout
    end

today = Coworker.new
today.happy("John")
today.sad("Bill")

yesterday = Boss.new
yesterday.happy("Anna")
yesterday.sad("Carl")