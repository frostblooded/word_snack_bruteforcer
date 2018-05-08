class WordsHandler
  FILE = 'words.txt'.freeze

  def self.real_word?(word)
    WordsHandler.load if @words.nil?
    @words.include? word
  end

  def self.load
    @words = File.readlines(FILE)
                 .map(&:chomp)
  end
end