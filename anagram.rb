startTime = Time.now

sortedToWordsHash = {}
words = []
File.open('input.txt').each do |line|
  word = line.chomp
  sortedWord = word.downcase.chars.sort.join

  words.push(word)
  if sortedToWordsHash[sortedWord]
    sortedToWordsHash[sortedWord].push(word)
  else
    sortedToWordsHash[sortedWord] = [word]
  end
end


File.open('output.txt', 'w') do |file|
  words.each do |word|
    file.print "#{word}\t"

    sortedWord = word.downcase.chars.sort.join
    anagrams = sortedToWordsHash[sortedWord]
    anagrams.each do |anagram|
      file.print anagram + ", "
    end

    file.puts
  end
end

endTime = Time.now

puts "Elapsed : #{(endTime - startTime)} seconds"