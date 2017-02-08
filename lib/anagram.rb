# Your code goes here!

require 'pry'
class Anagram
attr_accessor :word

def initialize(word)
  @word = word
end

def make_word_letters
  @word.split("").sort
end


def match(anagrams)
  result = []
  anagrams.collect do |word|
    letters_array = word.split("")
    if make_word_letters == letters_array.sort
      result.push(word)
    end
  end
  result 
end

end
