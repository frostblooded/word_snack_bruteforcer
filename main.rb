require './words_handler'

puts 'Enter letters (example: "абжвд"):'
letters = gets.chomp.split ''
puts 'Enter what lengths separated by a single space'\
     ' (example: "3 4 5" to find words with length 3, 4 and 5 respectively'
lengths = gets.chomp.split(' ').map(&:to_i)

lengths.each do |length|
  permutations = letters.permutation(length).to_a
  words = permutations.map(&:join)

  words.each do |word|
    puts word if WordsHandler.real_word? word
  end
end
