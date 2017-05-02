
class Puppy

  def initialize
    puts "Initializing new puppy instance."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Woof!" * integer
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years*7
    puts "The dog is #{dog_years} in dog years, which is #{human_years} in human_years."
  end

  def treat
    puts "*Jumps after receiving treat.*"
  end
end

# Driver Code
dog = Puppy.new
dog.fetch("ball")
dog.speak(5)
dog.roll_over
dog.dog_years(1)
dog.treat


class Tennis

  def initialize
    puts "Initializing..."
  end

  def serve
    puts "Serve the ball."
  end

  def return(shot_type)
    puts "*Return the ball with a #{shot_type}.*"
    shot_type
  end
end

tennis = Tennis.new
tennis.serve
tennis.return("drop shot")

hits = []


50.times do |i| 
  hits.push(tennis.return("top spin"))
  hits.push(tennis.return("slice"))
end

p hits

hits.each do |x| 
  tennis.serve
  tennis.return(x)
end