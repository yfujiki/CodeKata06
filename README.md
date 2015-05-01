# CodeKata06
A solution to CodeKata problem number6 (http://codekata.com/kata/kata06-anagrams/)

# Usage
```
% ruby anagram.rb
```

It reads input from `input.txt` and outputs results in `output.txt`.

# Idea

1. Put all words into the hash as sorted version of the word as a key. (e.g., "care" => ["care", "race", "acre" ...])
2. Get the agagrams by just accessing the hash.
