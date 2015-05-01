startTime = Time.now

sortedToWordsHash = {}
wordList = []
File.open('input.txt').each do |line|
  word = line.chomp
  sortedWord = word.downcase.chars.sort.join

  wordList.push(word)
  if sortedToWordsHash[sortedWord]
    sortedToWordsHash[sortedWord].push(word)
  else
    sortedToWordsHash[sortedWord] = [word]
  end
end


File.open('output.txt', 'w') do |file|
  wordList.each do |string|
    file.print "#{string}\t"

    target = string.downcase.chars.sort.join
    words = sortedToWordsHash[target]
    words.each do |word|
      file.print word + ", "
    end

    file.puts
  end
end

endTime = Time.now

puts "Elapsed : #{(endTime - startTime)} seconds"