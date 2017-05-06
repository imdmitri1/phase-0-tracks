class Wordgame
    attr_reader :hidden_word
    #attr_writer :letter


    def initialize
        @word = [] 
        @letter = ""
        @hidden_word = []
    end

    def hide_word(word)
        @word = word.split('')
        @word.each do |space| 
                    @hidden_word.push("_")
                end
    end

    def guess_letter(letter)
        if @word.include?(letter)
            puts "You got it, here is your letter:"
            @word.length.times do |num| if @word[num - 1] == letter
            @hidden_word[num - 1] = letter
                                        end
                                end 

            p @hidden_word.join                                        
                if @word == @hidden_word
                    abort "You woooooooonnnn!"
                end
        else puts "wrong guess"
            p @hidden_word.join  
        end 
    end

    def guess_word(word)
        if @word.join == word
            abort "You won, you got whole word!!! Congrats!"
        else abort "You didn't guess it, GAME OVER"
        end        
    end
end

#DRIVER CODE ----------------------------------------------
# game = Wordgame.new
# #p game
# p "*"*50
# p game.hide_word("a massageeeee")
# p "*"*50
# p game.guess_letter("a")
# p "*"*50
# p game.hidden_word
# p "*"*50
# #p game.guess_word("amassage")



game = Wordgame.new
puts "Welcome to the Word Guess Game"
puts "Player 1 guess a word:"
game.hide_word(gets.chomp)
puts ":) \n" *50
puts "Player 2 , you have #{game.hidden_word.length} attempts to guess a word" 
puts "Please enter a letter or type 'word' to enter whole word"

lettercollector = []
i= 0
until i == game.hidden_word.length
    letter = gets.chomp
         until  letter.length == 1 || letter == "word" || letter == " "
            puts "invalid entry: 1 letter at a time please"
            letter = gets.chomp
        end
if lettercollector.include?(letter)
    i -=1
end
lettercollector.push(letter)
if letter.length == 1
    game.guess_letter(letter)
elsif letter == "word"
    puts "Enter whole word, it's #{game.hidden_word.length} letters long"
    letter = gets.chomp
    if letter.length != game.hidden_word.length
        puts "you will loose if you don't enter #{game.hidden_word.length} letters long word"
        letter = gets.chomp
    end
    game.guess_word(letter)
end
i +=1
end
puts "You are out of attempts, Game Over "