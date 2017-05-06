require_relative 'guess_word_game'
describe Wordgame do 
    let(:g) { Wordgame.new }

    it "hide word" do
    expect(g.hide_word("auto")).to eq ["_", "_", "_", "_"]
    end

    it "guess letter" do 
    expect(g.guess_letter("a")).to eq "a _ _ _"
    end

    it "guess word" do 
    expect(g.guess_word("auto")).to eq "auto"
    end
end