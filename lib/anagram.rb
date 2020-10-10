require 'pry'
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(words)
    compared_words = []
    split_word = @word.split("")
    words.each do |word|
      second_word = word.split("")
      compared_words << word if split_word.sort! == second_word.sort!
    end
    compared_words
  end

end