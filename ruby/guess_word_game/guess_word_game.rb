class Wordgame
    attr_writer :letter

    def initialize
        @word = [] 
        @letter = letter
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
            @hidden_word[@word(letter)] = letter
        else puts "wrong guess"
        end
    @hidden_word        
    end

    def guess_word
        
    end
end
