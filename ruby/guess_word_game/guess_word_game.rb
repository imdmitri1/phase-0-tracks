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
            puts "You got it"
            @hidden_word[@word.index(letter)] = letter
        #elsif                  #add repetitive letters
                
        else puts "wrong guess"
        end
            @hidden_word.join  
    end

    def guess_word(word)
        if @word.join == word
            puts "You got whole word!!! Congrats!"
            true
        else puts "wrong"
            false
        end        
    end
end

#DRIVER CODE ----------------------------------------------
game = Wordgame.new
#p game
p "*"*50
p game.hide_word("a massage")
p "*"*50
p game.guess_letter("s")
p "*"*50
p game.hidden_word
p "*"*50
p game.guess_word("a massage")

