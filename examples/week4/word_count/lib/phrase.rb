# Implement a Phrase Class here:
#
class Phrase
  attr_accessor :word_count

  def initialize(phrase)
    @word_count= {}
    words = phrase.scan(/\w+/)
    @word_count.default = 0
    words.each do |word|
      word = word.downcase
      # @word_count[word] = @word_count[word] || 0 #interesting that @word_count[word].default = 0 didn't work
      @word_count[word] += 1
    end
    word_count.each {|word, count| puts "#{word}: #{count}"} 
  end


end
