require 'pry'

class Anagram

attr_accessor :word
attr_reader :match


  def initialize(word)
    @word = word
  end

  def match(anagrams)
    @anagrams = anagrams
    # get space separated string of anagrams and set to method variable

    the_matches = @anagrams.collect do |anagram|
    # iterate through array of anagram words
    # collect the ones that match the converted/sorted word
      if @word.split("").sort == anagram.split("").sort
        anagram
      end 
    end
    the_matches.compact
  end

end
