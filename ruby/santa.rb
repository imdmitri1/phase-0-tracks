class Santa
    attr_reader :age, :ethnicity, :reindeer_ranking
    attr_accessor :gender

    def initialize(gender, ethnicity)
        # puts "Initializing Santa instance"
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end

    def celebrate_birthday= (age)
        @age = age
    end

    def get_mad_at=(name)
        @reindeer_ranking.delete(name)
        @reindeer_ranking << name
    end
    
    def speak
        puts "Ho, ho, ho! Haaaappy holidays!"
    end

    def eat_milk_and_cookies(type)
        puts "That was a good #{type}"
    end

    def about
        puts "I'm #{@gender} #{@ethnicity}"
    end

end

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas.each do |santa|  santa.speak 
                        santa.about
            end


sample = Santa.new("agender", "black")
sample.get_mad_at = "Dasher"
puts "here is updated reindeer ranking: #{sample.reindeer_ranking}"
sample.celebrate_birthday  = 5
puts "here is new age: #{sample.age}"
puts "ethnicity #{sample.ethnicity}"

 def create_x_santas
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
i = 0
x = rand(5..25)
manys = []
until x == i

    manys = Santa.new(example_genders[rand(6)], example_ethnicities[rand(6)])
    manys.celebrate_birthday = rand(0..140)
    print manys.about,"and I am #{manys.age} years old"
    puts manys.speak
    i +=1
end
 end

 create_x_santas
