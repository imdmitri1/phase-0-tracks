module Shout

    def self.yell_angrily(word) 
    word + "!!!" + " :("
    end

    def self.yell_happily(word)
    word.upcase + "!!!!!" + " :)))"
    end
end

shout.yell_angrily("abra-cadabra")
shout.yell_happily("abra-cadabra")