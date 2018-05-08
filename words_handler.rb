class WordsHandler
  FILE = 'words.txt'.freeze

  def self.real_word?(word)
    WordsHandler.load if @words.nil?
    @words.bsearch { |line| word <=> line }
  end

  def self.load
    @words = File.readlines(FILE)
                 .map(&:chomp)
  end
end