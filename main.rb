
puts 'Enter letters seperated by commas (example: "а,б,ж,в,д"):'
letters = gets.chomp.split(',')
puts 'Enter what lengths do you want separated by commas' \
     '(example: "3,4,5" to find three words with length 3, 4 and 5 respectively'
wanted_lengths = gets.chomp.split(',').map(&:to_i)

wanted_lengths.each do |length|
  permutations = letters.permutation(length).to_a
  words = permutations.map(&:join)
end
