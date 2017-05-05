class Wordgame
    attr_reader :hidden_word
    attr_writer :letter


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
            @hidden_word.join  
        end 
    end

    def guess_word(word)
        if @word.join == word
            abort "You won, you got whole word!!! Congrats!"
        else abort "You didn't guess it, GAME OVER"
        end        
    end
    def until(a)
        until a.length == 1 || a == "word"
        puts "invalid entry / try again"
        a = gets.chomp
        end
        a 
        if a == "word"
            puts "111 Enter whole word, it's #{@hidden_word.length} letters long"
            p @hidden_word.join
            a = gets.chomp
            guess_word(a)
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
puts ":)
" *50
puts "Player 2 , you have #{game.hidden_word.length} attempts to guess a word" 
puts "Please enter 1 letter or type 'word' to enter whole word"
letter = gets.chomp
# until letter.length == 1 || letter == "word"
#     puts "invalid entry / try again"
#     letter = gets.chomp
# end
game.until(letter)
if letter.length == 1
    game.guess_letter(letter)
        index = 1
        while game.hidden_word.length != index
        index +=1
        puts "enter another letter"
        letter = gets.chomp
        game.until(letter)
        game.guess_letter(letter)
        end
    puts "You are out of attemps, you loooooost"
else puts "Enter whole word, it's #{game.hidden_word.length} letters long"
    letter = gets.chomp
 game.guess_word(letter)
end